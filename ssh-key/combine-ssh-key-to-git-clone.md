# Combine SSH key to git clone

This process tells git which ssh key to use when executing the **clone** commend.

For example, when you click button code and selec ssh on Github, you can copy a link for our git to download the repository to our local drive. This section is to tell git which SSH key should be used for a type of link

![](../.gitbook/assets/git\_clone\_link.png)

Still in `~/.ssh`, we edit **config** file

```
vi config
```

Then you press **i** to enter the insert mode

![](../.gitbook/assets/insert\_mode.png)

Then you copy and paste below (**your\_private\_ssh\_file\_name** is your private SSH key filename, in our example, it is **my\_sshkey\_name**)

```
#github-usydtelecomlab
Host usydtelecomlab.github.com
        HostName github.com
        #User git
        PreferredAuthentications publickey
        IdentityFile ~/.ssh/your_private_ssh_file_name
```

Finally, you press **esc**, type `:wq` and press **enter**

![](../.gitbook/assets/save\_mode.png)
