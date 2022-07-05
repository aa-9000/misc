#!/bin/bash

nvim_install_dir=$HOME/apps
nvim_conf_dir=$HOME/.config/nvim
nvim_ver=v0.7.0

which curl || (echo "must install curl" && exit 255)

if [ ! -d $nvim_install_dir ]; then
    mkdir -vp $nvim_install_dir
fi

if [ ! -d $HOME/bin ]; then
    mkdir -vp $HOME/bin
fi

if [ ! -d $nvim_conf_dir ]; then
    echo "creating $nvim_conf_dir"
    mkdir -vp $nvim_conf_dir
fi

if [ ! -x $nvim_conf_dir/init.vim ]; then
    cp -iv ./init.vim $nvim_conf_dir/init.vim
    cp -irv ./autoload $nvim_conf_dir
fi

if [ ! -x $nvim_conf_dir/coc-settings.json ]; then
    cp -iv ./coc-settings.json $nvim_conf_dir/coc-settings.json
fi


if [ ! -x $nvim_install_dir/nvim ]; then
    echo "Downloading neovim"
    cd $nvim_install_dir
    curl -O -L https://github.com/neovim/neovim/releases/download/$nvim_ver/nvim-macos.tar.gz
    tar zxf nvim-macos.tar.gz
    echo "Updating symlinks in $HOME/bin"
    ln -s $nvim_install_dir/nvim-osx64/bin/nvim $HOME/bin/nvim
    ln -s $nvim_install_dir/nvim-osx64/bin/nvim $HOME/bin/vim
fi


