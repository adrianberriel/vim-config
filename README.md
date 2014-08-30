# Vim configuration #

My vim config for my needs

## Prerequisites ##

    the_silver_searcher
    node.js

### If we want jsctags ###

    git clone -b nodejs-0.10.x-compatibility --recursive https://github.com/tow8ie/doctorjs.git
    cd doctorjs
    make install

## Once cloned ##

    git submodule init
    git submodule update

## Inside vim ##

    :BundleInstall

## Post installation ##

    Link .vim and .vimrc to $HOME


    cd ~/.vim/bundle/YouCompleteMe
    ./install.sh --clang-completer


    cd ~/.vim/bundle/tern_for_vim
    npm install
