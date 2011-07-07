#!/bin/bash

done=false
until $done; do

###Present the user with some options:

	echo "Install Script for unp-inplace"
	echo "  [i] Install"
	echo "  [u] Uninstall"
	echo "  [r] View Readme"
	echo "  [q] Quit without installing"
	echo -n "Option? "
	read -n 1 option
	echo

###Then do whatever they wanted:

	case $option in
	i)	# Install
		sudo cp -vi unp-inplace /usr/bin
		sudo cp -vi unp-inplace.desktop /usr/share/applications
		done=true
	;;
	u)	# Uninstall
		sudo rm -v /usr/bin/unp-inplace
		sudo rm -v /usr/share/applications/unp-inplace.desktop
		done=true
	;;
	r)	# Readme
		less ./README
	;;
	q)	# Quit
		done=true
	;;
	*)	# Unknown Option
		echo "I don't know what that means."
	;;
	esac
done
