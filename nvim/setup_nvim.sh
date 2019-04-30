#!/bin/bash

if ! [ -x "$(command -v nvim)" ]; then
    echo 'Can not find NeoVim' >&2
    echo 'Installation of NeoVim and VimPlug' >&2
    sudo add-apt-repository ppa:neovim-ppa/stable
    sudo apt-get update
    sudo apt-get install neovim
    
    CURL='/usr/bin/curl'
    CURLARGS="-fLo --create-dirs"
    LOCALSTORAGE= "~/.local/share/nvim/site/autoload/plug.vim"
    RVMHTTP="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

    # you can store the result in a variable
    $CURL $CURLARGS $LOCALSTORAGE $RVMHTTP

fi

cp init.vim ~/.config/nvim/init.vim
nvim -es -c PlugInstall
