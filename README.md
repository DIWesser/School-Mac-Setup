# jschool-mac-setup

This is a script to setup the Journalism school and Computer Science department Macs to my liking and open what I will use for the class I am.  

**This script currently depends on a drive named `TO GO` with a copy of [iTerm](https://www.iterm2.com/) in it's root directory being present to install it.**  

To use:  

The simplest method is the `.app` included in this repository. It can be placed on a thumb drive to automatically download, run, then remove the install script. No further user action is required.  

To run manually:    

1. Download: `curl -OsS https://raw.githubusercontent.com/DIWesser/jschool-mac-setup/master/jschool-setup.sh`
2. Make executable: `chmod +x jschool-setup.sh`
3. Run: `./jschool-setup.sh`

As a single line, run `cd ~/Desktop && curl -OsS https://raw.githubusercontent.com/DIWesser/jschool-mac-setup/master/jschool-setup.sh && chmod +x jschool-setup.sh && ./jschool-setup.sh && rm ~/Desktop/jschool-setup.sh` to download, run, and remove the script. The Automator .app is just a wrapper on this method.  
