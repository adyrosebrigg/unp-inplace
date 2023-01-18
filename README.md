**NOTICE: I have archived this repository along with most of my others because I no longer have time to maintain them. Feel free to fork per the licence of any given repo, and have fun! Hope you can put the code to good use.**

# unp-inplace

unp-inplace is a tiny little wrapper around unp. Just like unp, it lets 
you unpack nearly any archive, without having to remember countless 
shell commands and flags.

The twist is that it uses unp to unpack things where /they/ are, 
not where /you/ are in your shell. Just pass it one or more archives, 
and it'll tell unp to work its magic on each one, right from inside the 
archive's parent directory.

The end result is that no matter where you run unp-inplace from, you'll 
end up with ARCHIVE/ in the same place as ARCHIVE.gz.

## Getting Started

To use unp-inplace, you'll need a copy of unp installed.

Install it with your favorite package manager: on ubuntu/debian, `sudo apt-get install unp`; on arch/manjaro, `sudo pacman -S unp`, etc.

### Installing

You can install or remove unp-inplace using the provided install.sh 
script. Simply run ./install.sh and follow the prompts.

### Usage

`unp-inplace [archive.7z]`

`unp-inplace [archive.gz] [/somewhere/else/another.zip]`

(or, just run it without arguments to get the short info/usage text.)

Also installed with the program is a .desktop file, which should allow you to associate the script with mime-types in your favorite file manager. Once a type is associated with unp-inplace, double-clicking an archive will launch a terminal window executing unp-inplace on the file.

## Authors

* **Ady Rosebrigg** - [adyrosebrigg](https://github.com/adyrosebrigg)

## License

CC0 Public domain license; use, modify, and redistribute as you wish. See [COPYING](COPYING) for details.

(note that the unp script itself, which isn't included here, is released
under the GNU General Public License v2. As far as I know, the terms of that license don't apply here, since I'm neither modifying the unp
code nor redistributing it.)
