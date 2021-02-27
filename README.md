# guac.sh

A script to make life easier when using 42SP's Guacamole remote terminal.<br>

Adds aliases, a more helpful shell prompt, colors to some commands, some configs, and a script to initialize your ssh keys once you have copied them.<br>

You don't need to clone anything. Usage on Guacamole terminal is:
```shell
sh -c "$(curl -sS https://raw.githubusercontent.com/rkrocha/guac_script/master/guac.sh)"
```
This will run the script itself from this public repository by using the curl command. The script will then curl the rest of the files. SSH keys are not necessary for any of this.
