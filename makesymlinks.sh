#!/bin/bash
########################
# this script makes symlinks from the home directory to any desired dotfiles in ~/dotfiles
########################

### Vars

dir=~/dotfiles        # dotfiles directory
olddir=~/dotfiles_old # old dotfiles back up directory
files="bashrc bash_aliases vimrc vim"

### 

# create dotfiles_old dir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the $dir directory
echo "Chaning to the $dir directory" 
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  mv ~/.$file ~/dotfiles_old/
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/.$file
done
