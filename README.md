# myubuntu

Sets up my Ubuntu 18.04 LTS Desktop System

To execute it, you must login with your username (must be sudoer) to a **clean** Ubuntu 18.04 Desktop installation.


### Full Installation

This Ubuntu config is installed by running one of the following commands in your terminal as the main user of this desktop. 
You can install this via the command-line with `wget`. 


```shell
bash -c "$(wget https://raw.githubusercontent.com/juancarlosfernandez/trustedx-ubuntu/master/install-all.sh -O -)"
```

Note: Powerline fonts are not enabled by the script above (only installed). To use them right-click on the terminal and choose
any of the fonts that contain *Powerline*.

### Partial Installation

You can install just one item just invoking one of the `install-?.sh` scripts; for instance:

```shell
bash -c "$(wget https://raw.githubusercontent.com/juancarlosfernandez/trustedx-ubuntu/master/install-awscli.sh -O -)"
```

# VMware

If you are installing a virtual machine (VMware) it is recomeded to install Virtual Machine drivers (they are not installed by script above)

```shell
bash -c "$(wget https://raw.githubusercontent.com/juancarlosfernandez/trustedx-ubuntu/master/install-vmguest.sh -O -)"
```

## note

`install.sh` script (was) based on [robbyrussell/oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
