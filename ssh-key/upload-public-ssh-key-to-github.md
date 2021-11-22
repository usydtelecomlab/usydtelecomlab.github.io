# Upload Public SSH Key To Github

First, open the public key file as a text file and copy the content

![](../.gitbook/assets/ssh\_public\_key.png)

{% hint style="info" %}
If you don't know where is your public key file, open the git terminal and type

```
cd ~/.ssh
pwd
```
{% endhint %}

![The location of .ssh](../.gitbook/assets/ssh\_loc.png)

{% hint style="info" %}
**.ssh** sometimes is hidden, please set **"show hidden files"** in windows
{% endhint %}

Second, use your brower to go to Github, click **settings**

![](../.gitbook/assets/github\_settings.png)

Third, click **SSH and GPG keys** and click **New SSH key**

![](../.gitbook/assets/github\_ssh.png)

Forth, add the title and the public key content

![](../.gitbook/assets/github\_ssh\_add.png)

Finally, click **Add SSH key** to finish
