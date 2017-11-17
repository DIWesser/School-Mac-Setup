# School Mac Setup

This is a script to setup the Journalism school and Computer Science department Macs to my liking and open what I will use for the class I am.  

## Usage  

The simplest method is the `.app` included in this repository. It can run from a thumb drive to automatically download, run, then remove the install script. No further user action is required. It ieven has a cute robot icon:  
![Credit to https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Robot-icon.svg/2000px-Robot-icon.svg.png](img/Robot-icon.png)

To run manually:    

1. Download: `curl -OsS https://raw.githubusercontent.com/DIWesser/jschool-mac-setup/master/jschool-setup.sh`
2. Make executable: `chmod +x jschool-setup.sh`
3. Run: `./jschool-setup.sh`

As a single line, run `cd ~/Desktop && curl -OsS https://raw.githubusercontent.com/DIWesser/jschool-mac-setup/master/jschool-setup.sh && chmod +x jschool-setup.sh && ./jschool-setup.sh && rm ~/Desktop/jschool-setup.sh` to download, run, and remove the script. The Automator .app is just a wrapper on this method.  
