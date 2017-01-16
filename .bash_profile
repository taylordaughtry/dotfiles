#	---------------------------------------------------------------------------
#
#	Description: Setup for default BASH configuration
#
#	Sections:
#	1. Environment Configuration
#	2. Alias and Terminal Customizations
#	3. Extract most known archives
#	4. Easily boot/reboot Homestead
#
#	---------------------------------------------------------------------------


#	-------------------------------
#	1. Environment Configuration
#	-------------------------------

	# Customize Prompt
	export PS1="\u@\h [\W] 🔥  "

	# Enable Colors
	export CLICOLOR=1
	export LSCOLORS=ExFxBxDxCxegedabagacad

	# Add Composer to PATH
	export PATH="$PATH:~/.composer/vendor/bin"

	# Set Sublime Text as default editor
	export EDITOR=subl


#	-------------------------------
#	2. Alias and Terminal Customizations
#	-------------------------------

	# Terminal
	alias ls='ls -lGFha'				# Better list output
	alias f='open -a Finder ./'			# Opens current directory in MacOS Finder
	alias ~="cd ~"						# Go Home
	alias c='clear'						# Clear terminal display
	alias cgs='clear && git status'		# Clear and display git status

	# Manage Dotfile visibility
	alias showHidden='defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder'
	alias hideHidden='defaults write com.apple.finder AppleShowAllFiles -boolean false ; killall Finder'

	# Development
	alias editHosts='sudo edit /etc/hosts'	# Edit /etc/hosts file


#	-------------------------------
#	3. Extract most known archives
#	-------------------------------

	extract () {
		if [ -f $1 ] ; then
			case $1 in
				*.tar.bz2)   tar xjf $1     ;;
				*.tar.gz)    tar xzf $1     ;;
				*.bz2)       bunzip2 $1     ;;
				*.rar)       unrar e $1     ;;
				*.gz)        gunzip $1      ;;
				*.tar)       tar xf $1      ;;
				*.tbz2)      tar xjf $1     ;;
				*.tgz)       tar xzf $1     ;;
				*.zip)       unzip $1       ;;
				*.Z)         uncompress $1  ;;
				*.7z)        7z x $1        ;;
				*)     echo "'$1' cannot be extracted via extract()" ;;
			esac
		else
			echo "'$1' is not a valid file"
		fi
	}


#	-------------------------------
#	4. Easily boot/reboot Homestead
#	-------------------------------

	bootHomestead () {
		currentDirectory=$(pwd);

		cd ~/Homestead;
		vagrant up;

		cd $currentDirectory;
	}
	quitHomestead () {
		currentDirectory=$(pwd);

		cd ~/Homestead;
		vagrant halt;

		cd $currentDirectory;
	}