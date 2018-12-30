#!/bin/sh -x

DOTFILES_DIR=~/Code/dotfiles

#files="vim tmux.conf vimrc vimrc_python gitconfig zshrc bashrc pylintrc offlineimaprc urlview notmuch-config"


ln -sf $DOTFILES_DIR/tmux.conf $HOME/.tmux.conf
ln -sf $DOTFILES_DIR/vim $HOME/.vim
ln -sf $DOTFILES_DIR/gitconfig $HOME/.gitconfig
ln -sf $DOTFILES_DIR/alacritty.yml $HOME/.alacritty.yml
ln -sf $DOTFILES_DIR/zshrc $HOME/.zshrc
# If oh-my-zsh is not installed, grab the installer from https://github.com/robbyrussell/oh-my-zsh then this should work
ln -sf $DOTFILES_DIR/edwin.zsh-theme $HOME/.oh-my-zsh/themes/
