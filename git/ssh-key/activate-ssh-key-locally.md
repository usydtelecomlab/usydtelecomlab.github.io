# Activate SSH Key locally

After creating a SSH key, we should activate SSH key locally

First, we need to enter the ssh-agent mode by typing the commend below

```shell
eval "$(ssh-agent -s)"
```

Then, we need to activate our created SSH key

```shell
ssh-add ~/.ssh/your_private_ssh_key_name
```

The example is also given below

![](../../.gitbook/assets/git\_activate\_ssh\_key.png)
