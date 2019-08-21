#!/bin/bash
#################################################################### License ###
# unp-inplace - a tiny wrapper script for the unarchiver unp.
# Written in 2011 by Ady Rosebrigg (adyrosebrigg@gmail.com)
#
# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty.
#
# You should have received a copy of the CC0 Public Domain Dedication along
# with this software. If not, see 
# <http://creativecommons.org/publicdomain/zero/1.0/>.
################################################################## Installer ###
srcdir=$(dirname $(readlink -f $0))	# Find the installer's parent directory.

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
		# (first, make sure unp is here.)
		hash unp 2>&- || { 
		echo 1>&2 "Uh oh. I can't seem to find the command unp."
		echo 1>&2 "Try installing it with your favorite package manager,"
		echo 1>&2 "then come back here."
		exit 1; } # if not, exit gracefully.

		# Next, install the files.
		sudo cp -vi ${srcdir}/unp-inplace /usr/bin
		sudo cp -vi ${srcdir}/unp-inplace.desktop /usr/share/applications
		done=true
	;;
	u)	# Uninstall
		sudo rm -v /usr/bin/unp-inplace
		sudo rm -v /usr/share/applications/unp-inplace.desktop
		done=true
	;;
	r)	# Readme
		less ${srcdir}/README
	;;
	q)	# Quit
		done=true
	;;
	*)	# Unknown Option
		echo "I don't know what that means."
	;;
	esac
done
