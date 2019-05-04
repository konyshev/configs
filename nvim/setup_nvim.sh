#!/bin/bash

if ! [ -x "$(command -v nvim)" ]; then
    echo '--> Can not find NeoVim' >&2
    echo '--> Installation of NeoVim and VimPlug' >&2
    sudo add-apt-repository ppa:neovim-ppa/stable
    sudo apt-get update
    sudo apt-get install neovim
    sudo apt-get install xclip
    
    VIM_PLUG_CMD='curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    $VIM_PLUG_CMD

fi

cp init.vim ~/.config/nvim/init.vim
nvim --headless +PlugInstall +qa
