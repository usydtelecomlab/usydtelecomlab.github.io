# Create SSH Key

Paste the text below, substituting in your GitHub email address.

```
ssh-keygen -t ed25519 -C "your_email@example.com"
```

{% hint style="info" %}


**Note:** If you are using a legacy system that doesn't support the Ed25519 algorithm, use:

```shell
$ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
{% endhint %}

This creates a new SSH key, using the provided email as a label.

```
> Generating public/private algorithm key pair.
```

When you're prompted to "Enter a file in which to save the key," press Enter. This accepts the default file location.

```shell
> Enter a file in which to save the key (/c/Users/you/.ssh/id_algorithm):[Press enter]
```

At the prompt, type a secure passphrase. For more information, see ["Working with SSH key passphrases](https://docs.github.com/en/articles/working-with-ssh-key-passphrases)." **Here, I recommend to use an empty passphrase, or you need to input that passphrase whenever you pull or push codes to our Github repository**

```
> Enter passphrase (empty for no passphrase): [Type a passphrase]
> Enter same passphrase again: [Type passphrase again]
```

The example is shown below

![](../.gitbook/assets/git\_create\_ssh\_key.png)

If you type`ls`, you will see two files created: the one ends with **.pub** is your **public key** and the other is your **private key**
