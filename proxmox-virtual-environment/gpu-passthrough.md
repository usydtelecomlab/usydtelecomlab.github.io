# GPU Passthrough

## VT-D

GPU passthrough requires CPU to support VT-D. The code below can check, if there isn't any output, we need to open VT-D in BIOS

```
dmesg | grep -e DMAR -e IOMMU
```

## Grub Settings

`Use nano to open` `/etc/default/grub`

```
nano /etc/default/grub
```

Find the line below

```
GRUB_CMDLINE_LINUX_DEFAULT="quiet“
```

For Intel CPU, we change to&#x20;

```
GRUB_CMDLINE_LINUX_DEFAULT="quiet intel_iommu=on video=vesafb:off video=efifb:off"
```

For AMD CPU, we change to

```
GRUB_CMDLINE_LINUX_DEFAULT="quiet amd_iommu=on video=vesafb:off video=efifb:off"
```

{% hint style="info" %}
**video=vesafb:off** means we don't use VESA driver for our GPU because this driver may cause resolution problems on Windows

**video=efifb:off** means we don't use UEFI to start our GPU (we use the legacy mode)
{% endhint %}

{% hint style="danger" %}
If you have multiple GPUs and they share the bandwidth, we need to separate iommu. Therefore, we need to add the code below in **GRUB\_CMDLINE\_LINUX\_DEFAULT**

```
pcie_acs_override=downstream
```
{% endhint %}

Update grub

```
update-grub
```

## Load VIFO

Edit /etc/modules

```
nano /etc/modules
```

Add the 4 lines of codes below inside

```
vfio
vfio_iommu_type1
vfio_pci
vfio_virqfd
```

Config our GPU as belows

```
# find our GPU id
lspci | grep VGA

# check your device ID
lspci -n -s 01:00
## output（here, device ID is just an example）
## one is our GPU and the other is your GPU's audio input device
#01:00.0 0300: 10de:1381 (rev a2)
#01:00.1 0403: 10de:0fbc (rev a1)

# add your device vfio
echo "options vfio-pci ids=10de:1381,10de:0fbc disable_vga=1" > /etc/modprobe.d/vfio.conf

# stop error 43 in win10
echo "options kvm ignore_msrs=1 report_ignored_msrs=0" > /etc/modprobe.d/kvm.conf

# trust our device
echo "options vfio_iommu_type1 allow_unsafe_interrupts=1" > /etc/modprobe.d/iommu_unsafe_interrupts.conf

# check what driver is needed for our GPU
lspci -vvv -s 01:00
## output example
##01:00.0
#        Kernel driver in use: vfio-pci
#        Kernel modules: nvidiafb, nouveau
##01:00.1
#        Kernel driver in use: vfio-pci
#        Kernel modules: snd_hda_intel
```

