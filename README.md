pedrofranceschi's vimfiles
========

These are my vimfiles. I created them almost from scratch when I started using Vim and adapted them to my needs.

#### What's included

* [Bad Wolf (colorscheme)](https://github.com/sjl/badwolf)
* [CtrlP](https://github.com/kien/ctrlp.vim)
* [vim-objc](https://github.com/b4winckler/vim-objc)
* [powerline](https://github.com/Lokaltog/vim-powerline)
* [snipmate](https://github.com/msanders/snipmate.vim)
* [tcomment](https://github.com/tomtom/tcomment_vim)
* [YankRing](https://github.com/vim-scripts/YankRing.vim)
* [ack.vim](https://github.com/mileszs/ack.vim)
* [vim-textobj-user](https://github.com/kana/vim-textobj-user)
* [vim-textobj-rubyblock](https://github.com/nelstrom/vim-textobj-rubyblock)
* [fugitive](https://github.com/tpope/vim-fugitive)
* [unimpaired](https://github.com/tpope/vim-unimpaired)
* [surround](https://github.com/tpope/vim-surround)

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

Open "mensch-Powerline.otf" and click "Install font" to install Powerline's font which supports fancy characters.

	open mensch-Powerline.otf

Open Vim:

	vim

(if you use MacVim):

	mvim

Install bundles by typing

	:BundleInstall

Restart vim and enjoy! :)
