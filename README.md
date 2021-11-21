# USYD Telecom Lab

Use the link below to see the document online

[https://usyd-telecomlab.gitbook.io/usyd-telecom-lab/](https://usyd-telecomlab.gitbook.io/usyd-telecom-lab/)

## Use Git to install this module



In `~/.ssh/config`, add the configuration of ssh-key and the alias for this github account `Host` (to avoid contradiction)

```markdown
#github-usydtelecomlab
Host usydtelecomlab.github.com
        HostName github.com
        #User git
        PreferredAuthentications publickey
        IdentityFile ~/.ssh/github_usydtelelab
```



Clone this into your local drive

```
git clone git@usydtelecomlab.github.com:usydtelecomlab/usydtelecomlab.github.io.git
```
