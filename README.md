pedrofranceschi's vimfiles
========

These are my vimfiles. I created them almost from scratch when I started using Vim and adapted them to my needs.

#### What's included

* [Bad Wolf (colorscheme)](http://stevelosh.com/projects/badwolf/)
* [CtrlP](https://github.com/kien/ctrlp.vim)
* [vim-objc](https://github.com/b4winckler/vim-objc)
* [powerline](https://github.com/Lokaltog/vim-powerline)
* [snipmate](https://github.com/msanders/snipmate.vim)
* [tcomment](https://github.com/tomtom/tcomment_vim)
* [YankRing](https://github.com/vim-scripts/YankRing.vim)

#### Installing (step by step)

Go to your home directory:

    cd ~

Clone my vimfiles repo:


    git clone --recursive https://github.com/pedrofranceschi/vimfiles.git

Rename the repo to .vim:

    mv vimfiles .vim

Link vimrc and gvimrc to your home:

    ln -s .vim/vimrc .vimrc
    ln -s .vim/gvimrc .gvimrc

Open .vim with Finder:

    open .vim

Double-click the "Monaco_Powerline.otf" file to install Powerline's Monaco font which supports fancy characters.

Restart vim and enjoy! :)
