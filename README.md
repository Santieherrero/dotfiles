# Dotfiles

Here you have my personal dotfiles, theses are config files to setup my system. 

I usually running on Mac OS but this setting also works on Linux OS too.

## Prerequisites

* Zsh
* Ruby
* RVM (Ruby Version Manager)

To see what shell you are executing: `echo $SHELL`.

If you need to change your default shell to Zsh: `chsh -s $(which zsh) $USER`

## Installation

    $ git clone git@github.com:Santieherrero/dotfiles.git
    $ cd ~/.dotfiles
    $ rake dot:install

Automatically **symlink the dotfiles** and install my personal oh-my-zsh theme (more instructions below) , it will prompting you
if a file already exists (like if you already have `~/.zshrc`).

## Features

These dotfiles uses [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh), to install this framework you can use:

	$ cd ~/.dotfiles
	$ rake zsh:ohz_install

Many of the plugins from ohz that i use are on my [.zshrc](https://github.com/Santieherrero/dotfiles/blob/master/zshrc) file check out!.

## Ohz Theme 

![alt tag](https://github.com/Santieherrero/dotfiles/blob/master/images/zsh-prompt.png)


## Conclusion

I do my best to keep them clean and up to date.

Feel free to customize the [.zshrc](https://github.com/Santieherrero/dotfiles/blob/master/zshrc) file to match your preference
