This project has moved to [gitlab](https://gitlab.com/diwesser/school-mac-setup).

I haven't used this since the start of 2018. It was pretty handy though.

# School Mac Setup

This is a script to setup the Journalism school and Computer Science department Macs to my liking and open what I will use for whatever class I am in.

## Usage  

The simplest method is the `.app` included in this repository. It can run from a thumb drive to automatically download, run, then remove the install script. No further user action is required. It ieven has a cute robot icon:  
![Credit to https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Robot-icon.svg/2000px-Robot-icon.svg.png](img/Robot-icon.png)

To run manually:    

1. Download: `curl -OsS https://raw.githubusercontent.com/DIWesser/school-mac-setup/master/school-setup.sh`
2. Make executable: `chmod +x school-setup.sh`
3. Run: `./school-setup.sh`

As a single line, run `cd ~/Desktop && curl -OsS https://raw.githubusercontent.com/DIWesser/school-mac-setup/master/school-setup.sh && chmod +x school-setup.sh && ./school-setup.sh && rm ~/Desktop/school-setup.sh` to download, run, and remove the script. The Automator .app is just a wrapper on this method.  

## Todo

- [ ] Move installation over to homebrew.
      - Homebrew requires root for a normal install and unpacking it to another location can make some taps grumpy. But, if I'm just using casks to install GUI apps, it might be better behaved.
      - [This Github issue](https://github.com/caskroom/homebrew-cask/issues/27431) might help.
- [ ] Update dotfile location
- [ ] Move some of this over to a config file.
