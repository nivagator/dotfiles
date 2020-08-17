#!/bin/bash
########################
# this script makes symlinks from the home directory to any desired dotfiles in ~/dotfiles
########################

### Vars

dir=~/dotfiles        # dotfiles directory
olddir=~/dotfiles_old # old dotfiles back up directory
files="test bashrc bash_aliases vimrc vim"

# create dotfiles_old dir
if ! [ -d "$olddir" ]; then
  echo "Creating $olddir for backup of any existing dotfiles in ~"
  mkdir -p $olddir
  echo "...done"
fi

# change to the $dir directory
echo "Chaning to the $dir directory" 
cd $dir
echo "...done"
echo
# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
  if [ -f "$dir/$file" ] || [ -d "$dir/$file" ]; then
    if ! [ -L ~/."$file" ]; then
      echo "Moving ~/.$file from ~ to $olddir."
      mv ~/.$file ~/dotfiles_old/
    else
      echo "Existing ~/.$file is a symlink, unlinking."
      unlink ~/.$file
    fi
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
  else 
    echo "$dir/$file does not exist. Skipping..."
  fi
  echo "----"
done
