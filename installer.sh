#	---------------------------------------------------------------------------
#
#	Description: Dotfiles install script
#
#	Sections:
#	0. Variables
#	1. BASH Profile Setup
#	2. Sublime Setup
#
#	---------------------------------------------------------------------------


#	-------------------------------
#	0. Variables
#	-------------------------------

	currentUser=$(whoami)


#	-------------------------------
#	1. BASH Profile Setup
#	-------------------------------

	ln -Fs ~/dotfiles/.bash_profile ~/.bash_profile


#	-------------------------------
#	2. Sublime Setup
#	-------------------------------

	ln -Fs ~/dotfiles/sublime/Preferences.sublime-settings /Users/$currentUser/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

	sudo ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
