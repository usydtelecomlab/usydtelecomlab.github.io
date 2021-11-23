# Auto Pull & Push

In this section, we introduce how to automatically pull any update from the remote repository (**which you should do every time when you develop any code based on our repositories**). Also, auto push is introduced, **but you need an owner access** (please contact the adminstrator to give you access)&#x20;

## File Structure

In the example below, we have a master folder called **"Github\_USYD\_CTI\_Python"** to contain all projects. Every project inside this master folder is a project.

click **pull-all.bat** automatically update your local repositories and their (nested) submodules inside

click **push-all.bat** automatically push your repositories to the remote

{% hint style="danger" %}
**Auto-push** is a dangerous operation because you don't give any comment on this push.

I don't recommend to run **auto-push**&#x20;
{% endhint %}

{% hint style="warning" %}
**Auto-push** doesn't track any change inside any submodule. If you want to change any code of a submodule, you should go to the local repository of that submodule and push that local repository to the remote.&#x20;
{% endhint %}

{% hint style="info" %}
**Auto-push** tracks the adding of submodules and the version of the submodule currently used.&#x20;
{% endhint %}

![](../.gitbook/assets/file\_structure.png)

## Bat files download

{% file src="../.gitbook/assets/pull-all.bat" %}

{% file src="../.gitbook/assets/push-all.bat" %}
