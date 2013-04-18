dotfiles
========

These are my dotfiles; pretty standard stuff. This setup of dotfiles is based on [Sila Swell's setup](http://silas.sewell.org/blog/2009/03/08/profile-management-with-git-and-github/)

Reinstallation
--------------
Run the following commands to reinstall all dotfiles back to the home directory:

    cd ~
    git clone git://github.com/abriemme/dotfiles.git dotfiles.git
    mv dotfiles.git/.git .dotfiles.git
    mv -i dotfiles.git/* .
    rmdir dotfiles.git

Usage
-----

*   `dotfile pull` - get latest configuration changes
*   `dotfile add <FILENAME>` - add a configuration file
*   `dotfile commit -a` - save all configuration changes
*   `dotfile push` - push configuration changes to GitHUb
