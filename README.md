# Vim configuration #

My vim config for my needs

## Prerequisites ##

    cmake
    ctags
    the_silver_searcher
    node.js

### If we want jsctags ###

    (Not using this currently)

    git clone -b nodejs-0.10.x-compatibility --recursive https://github.com/tow8ie/doctorjs.git
    cd doctorjs
    make install

## Install Vundle ##

    git submodule init
    git submodule update

## Install Plugins ##

    Inside vim:
    :PluginInstall

## Post installation ##

    Link .vim .vimrc .gvimrc to $HOME


    cd ~/.vim/bundle/YouCompleteMe
    ./install.py --clang-completer


    cd ~/.vim/bundle/tern_for_vim
    npm install
