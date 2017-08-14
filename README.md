# dotfiles

The preferred configuration for the apps I use on a daily basis.

# Installation

open Terminal, and run these commands:

```
cd ~
git clone https://github.com/taylordaughtry/dotfiles.git dotfiles
cd dotfiles
bash installer.sh
```

This will clone the repo to your user directory in the proper place, then run
the installer script to set everything up. **This will overwrite your current
`.bash_profile` and Sublime Settings.** Be sure you don't need anything from
them before you run the installer script.

## Sublime Setup

Once you've ran the installer, you'll need to do two things to setup Sublime 
and use the Afterglow theme. (You don't have to use it; it's just my 
preferred theme.)

1. Download [Package Control](https://packagecontrol.io/installation)
2. Install [ColorSublime](https://packagecontrol.io/packages/Colorsublime) through Package Control

## Roadmap

- Download, install, and setup everyday development apps (Sublime, Transmit...)
