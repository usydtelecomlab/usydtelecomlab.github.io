# Git Configuration

## Config the `~ `directory on windows (Recommended but Not Mandotary)

Right click This PC -> Advanced system settings -> Environment variables

In User variables for \*\*\* (here should be your windows account name), create a viable called Home, set its value to a directory except for your system disk

![](<.gitbook/assets/git environment.png>)

## Enable Long Path (Mandotary)

our model based structure may cause a problem, the long path.&#x20;

Therefore, we open **CMD** in windows (**run as administrator**) and type below

```
git config --system core.longpaths true
```
