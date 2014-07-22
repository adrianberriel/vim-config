Vim configuration
===========

Vim configuration for my workflow

Once cloned:

    git submodule init
    git submodule update

Inside vim:

    :BundleInstall

Post installation:

    Link .vim and .vimrc to $HOME

    cd ~/.vim/bundle/YouCompleteMe
    ./install.sh --clang-completer

    cd ~/.vim/bundle/tern_for_vim
    npm install
