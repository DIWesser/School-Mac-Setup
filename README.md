# jschool-mac-setup

This is a script to setup the Journalism school Macs to my liking, or at least as close as I can come while only having access to userspace.  

To use:  

The implest method is the .app included in this repository. It can be placed on a thumb drive to automatically download, run, then remove the install script. No further user action should be required.  

The tested version download and installs the script but does not remove it. The untested version *should be fine, but it was made by editing a Automator .app from a Linux box and i haven't had the chance to test it. Use at your own peril.

To run manually:    

1. Download (`curl -OsS https://raw.githubusercontent.com/DIWesser/jschool-mac-setup/master/jschool-setup.sh`)
2. Make executable (`chmod +x jschool-setup.sh`)
3. run (`./jschool-setup.sh`)

As a single line, run `cd ~/Desktop && curl -OsS https://raw.githubusercontent.com/DIWesser/jschool-mac-setup/master/jschool-setup.sh && chmod +x jschool-setup.sh && ./jschool-setup.sh && rm ~/Desktop/jschool-setup.sh` to download, run, and remove the script.  

