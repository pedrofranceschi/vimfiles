" Example Vim graphical configuration.
" Copy to ~/.gvimrc or ~/_gvimrc.

set guifont=Monaco\ for\ Powerline:h12
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Hide toolbar.
set background=light              " Background.
set lines=25 columns=100          " Window dimensions.

" Uncomment to use.
" set guioptions-=r                 " Don't show right scrollbar

colorscheme badwolf

" Save using Command-S on MacVim without replacing
noremap <D-s> :w<CR>
