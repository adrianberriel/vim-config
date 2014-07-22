# Vim configuration #

My vim config for my needs

## Prerequisites ##

    the_silver_searcher
    node.js

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
