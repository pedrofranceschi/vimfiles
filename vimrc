" .vimrc
" Author: Pedro Franceschi <pedrohfranceschi@gmail.com>
" Source: http://github.com/pedrofranceschi/vimfiles

" ##### Vundle setup  {{{
set nocompatible              " be iMproved, required
filetype off                  " required
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" "}}}
" ##### Bundles  {{{
" Theme of this vimfiles
Plugin 'sjl/badwolf'
" Fuzzy search file swithing with Ctrl+P
Plugin 'kien/ctrlp.vim'
" Useful statusbar in your vim
Plugin 'bling/vim-airline'
Plugin 'b4winckler/vim-objc'
" Snipmate dependencies
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
" Enables the usage of snippets in vim. Use tab to complete.
Plugin 'garbas/vim-snipmate'
" Collection of snipmate snippets
Plugin 'honza/vim-snippets'
" Comment toggling: use `gc` to toggle comments in visual mode
Plugin 'tomtom/tcomment_vim'
" Navigate the yank register stack using Ctrl+M (useful when pasting code)
Plugin 'maxbrunsfeld/vim-yankstack'
" Keybidings to use Ack in Vim. Use `<leader>a` in visual mode to search a
" text in the tree.
Plugin 'mileszs/ack.vim'
" Makes vim understand ruby blocks
Plugin 'kana/vim-textobj-user'
Plugin 'rhysd/vim-textobj-ruby'
" Git bindings for VIM
Plugin 'tpope/vim-fugitive'
" Some useful keybindings
Plugin 'tpope/vim-unimpaired'
" Surround utils for vim
Plugin 'tpope/vim-surround'
" Automatic closing of brackets
Plugin 'Raimondi/delimitMate'
" Makes vim understand markdown folding
Plugin 'nelstrom/vim-markdown-folding'
" Makes the repeat command `.` work in more cases
Plugin 'tpope/vim-repeat'
" Vim support for Js handlebars
Plugin 'nono/vim-handlebars'
Plugin 'nathanaelkane/vim-indent-guides'
" Javascript support for vim
Plugin 'pangloss/vim-javascript'
Plugin 'milkypostman/vim-togglelist'
" Relative line number
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
" File explorer for VIM. <leader>ft to activate
Plugin 'scrooloose/nerdtree'
Plugin 'michalliu/jsruntime.vim'
Plugin 'michalliu/jsoncodecs.vim'
" Source beautify: <leader>sb to activate
Plugin 'michalliu/sourcebeautify.vim'
" Golang support for vim
Plugin 'jnwhiteh/vim-golang'
" Make jk behave as jumps in Vim
Plugin 'teranex/jk-jumps.vim'
Plugin 'tpope/vim-dispatch'
" Expand html easily: div > 3*li then Ctrl+e in an html file
Plugin 'rstacruz/sparkup'
Plugin 'haya14busa/incsearch.vim'
" Use the Molokay font in Vim
Plugin 'tomasr/molokai'
" Puppet support for Vim
Plugin 'rodjek/vim-puppet'
" Elixir support for Vim
Plugin 'elixir-lang/vim-elixir'
" Ruby support for Vim
Plugin 'vim-ruby/vim-ruby'
" How do I: type in query and press <leader>h
Plugin 'isovector/vim-howdoi'
" Autocomplete as you type, <enter> inserts, <C-e> to closes popup
Plugin 'vim-scripts/AutoComplPop'

" The following loads a local bundles file, in case
" you wish to install local plugins
if filereadable(glob("~/.vimrc.bundles.local"))
    source ~/.vimrc.bundles.local
endif

" }}}
" ##### Vundle post-setup {{{
call vundle#end()            " required
filetype plugin indent on    " required
" }}}
" ##### Basic options  {{{
" Display incomplete commands.
set showcmd
" Display the mode you're in.
set showmode

" Intuitive backspacing.
set backspace=indent,eol,start
" Handle multiple buffers better.
set hidden

" Enhanced command line completion.
set wildmenu
" Complete files like a shell.
set wildmode=list:longest

" Case-insensitive searching.
set ignorecase
" But case-sensitive if expression contains a capital letter.
set smartcase

" Show line numbers.
set number
" Show cursor position.
set ruler

" Highlight matches as you type.
set incsearch
" Don't highlight matches.
set nohlsearch

" Turn off line wrapping.
set nowrap    
" Show 3 lines of context around the cursor.
set scrolloff=3

" Set the terminal's title
set title
" No beeping.
set visualbell

" Don't make a backup before overwriting a file.
set nobackup
" And again.
set nowritebackup
" Keep swap files in one location
set directory=$HOME/.vim/tmp//,.

" Global tab width.
set tabstop=4
" And again, related.
set shiftwidth=4

" Files open expanded
set foldlevelstart=50
" Use decent folding
set foldmethod=indent

" Show the status line all the time
set laststatus=2
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Always diff using vertical mode
set diffopt+=vertical

" Allows the mouse to be used
set mouse=a

" Automatically reads changed files
set autoread


" Enable syntax highlighting
syntax on
" Sets the colorscheme for terminal sessions too.
colorscheme molokai
autocmd BufEnter * colorscheme molokai

" Leader = ,
let mapleader = ","
" }}}
" ##### General mappings  {{{
" ##### Tabs {{{
nnoremap <leader>t :tabnew<cr>
nnoremap <leader>e :tabedit
nnoremap <leader>c :tabclose<cr>
nnoremap <leader>n :tabnext<cr>
nnoremap <leader>p :tabprevious<cr>
" }}}
" ##### Line movement {{{
" Go to start of line with H and to the end with $
noremap H ^
noremap L $

" Emacs bindings in command-line mode
cnoremap <C-A> <home>
cnoremap <C-E> <end>
" }}}
" ##### Split windows {{{
" Move around easily
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Create windows
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>m <C-w>s<C-w>j
nnoremap <leader>d <C-w>q
" }}}
" ##### Folding {{{
" Toggles folding with space
nnoremap <Space> za
" Open all folds
nnoremap zO zR
" Close all folds
nnoremap zC zM
" Close current fold
nnoremap zc zc
" Close all folds except the current one
nnoremap zf mzzMzvzz
" }}}
" ##### Search {{{
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" }}}
" ##### Misc {{{
" Edit and load vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Wrap current paragraph
noremap <leader>w gqap

" Toggles hlsearch
nnoremap <leader>hs :set hlsearch!<cr>

" Maps <C-C> to <esc>
noremap <C-C> <esc>

" Go full-screen
nnoremap <leader>fs :set lines=999 columns=9999<cr>

" }}}
" }}}
" ##### Plugin settings  {{{
" ##### Fugitive  {{{
" (thanks to Steve Losh's vimrc)
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>ga :Gadd<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gci :Gcommit<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gm :Gmove
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>grm :Gremove<cr>
nnoremap <leader>gp :Git push
" }}}
" ##### NERDTree  {{{
noremap <leader>ft :NERDTreeToggle<CR>

" Don't fuck up vim's default file browser
let g:NERDTreeHijackNetrw = 0
" }}}
" ##### Airline  {{{
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'
let g:airline_section_warning = ''
let g:airline_inactive_collapse = 0
let g:airline#extensions#default#section_truncate_width = {
  \ 'a': 60,
  \ 'b': 80,
  \ 'x': 100,
  \ 'y': 100,
  \ 'z': 60,
\ }
" }}}
" ##### CtrlP  {{{
" Works not only in ancestor directories of my working directory.
let g:ctrlp_working_path_mode = 'a'
" Custom ignores
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store'
" }}}
" ##### Yankstack  {{{
" Don't use default mappings
let g:yankstack_map_keys = 0

" Set bindings
nmap <C-M> <Plug>yankstack_substitute_older_paste
nmap <C-N> <Plug>yankstack_substitute_newer_paste
" }}}
" ##### Ack  {{{
noremap <C-F> :Ack!<space>
" }}}
" ##### Number toggle  {{{
let g:NumberToggleTrigger="<leader>ll"
"}}}
" ##### togglelist {{{
let g:toggle_list_copen_command="Copen"
" }}}
" ##### vim-howdoi {{{
let g:howdoi_map="<leader>how"
" }}}
" }}}
" ##### Ack motions {{{
" (from Steve Losh's vimrc)
" Motions to Ack for things.  Works with pretty much everything, including:
"
"   w, W, e, E, b, B, t*, f*, i*, a*, and custom text objects
"
" Awesome.
"
" Note: If the text covered by a motion contains a newline it won't work.  Ack
" searches line-by-line.

nnoremap <silent> <leader>a :set opfunc=<SID>AckMotion<CR>g@
xnoremap <silent> <leader>a :<C-U>call <SID>AckMotion(visualmode())<CR>

function! s:CopyMotionForType(type)
    if a:type ==# 'v'
        silent execute "normal! `<" . a:type . "`>y"
    elseif a:type ==# 'char'
        silent execute "normal! `[v`]y"
    endif
endfunction

function! s:AckMotion(type) abort
    let reg_save = @@

    call s:CopyMotionForType(a:type)

    execute "normal! :Ack! --literal " . shellescape(@@) . "\<cr>"

    let @@ = reg_save
endfunction
" }}}
" ##### Filetype-specific  {{{
" ##### Ruby  {{{
" Specific shiftwidth for ruby files
autocmd FileType ruby set shiftwidth=2
autocmd FileType ruby set tabstop=2
" Convert tabs to spaces in Ruby files
autocmd FileType ruby set expandtab

" But not for erb files...
autocmd FileType eruby set shiftwidth=4
autocmd FileType eruby set tabstop=4
"
" Remaps textobj-rubyblock's bindings to vim's defaults
autocmd FileType ruby map aB ar
autocmd FileType ruby map iB ir
" }}}
" ##### Puppet  {{{
" Specific shiftwidth for puppet files
autocmd BufRead,BufNewFile *.pp set filetype=puppet
autocmd BufRead,BufNewFile Puppetfile set filetype=ruby

" And custom tab sizes too
autocmd FileType puppet set shiftwidth=2
autocmd FileType puppet set tabstop=2
" }}}
" ##### Markdown  {{{
" Sets markdown syntax for *.md files.
autocmd BufRead,BufNewFile *.md set filetype=markdown

" Wrap markdown files.
autocmd BufRead,BufNewFile *.md set wrap

autocmd BufEnter *.md colorscheme badwolf
" }}}
" ##### JavaScript  {{{
" Sets javascript syntax for *.json files.
autocmd BufRead,BufNewFile *.json set filetype=javascript

" Sets html syntax for *.ejs files.
autocmd BufRead,BufNewFile *.ejs set filetype=html
" }}}
" ##### Vim {{{
" Make vimrcs open folded
autocmd FileType vim set foldlevel=0
autocmd FileType vim set foldmethod=marker
" }}}
" ##### XML {{{
" Automatically format XML files
nnoremap <leader>xb :%s,>[ <tab>]*<,>\r<,g<cr> gg=G
" }}}
" ##### SQL {{{
" SQL to CSV
nnoremap <leader>csv ggV/^+-<cr>dGV?^+-<cr>dgg:g/^+-/d<cr>:%s/^<bar> \<bar> <bar>$//g<cr>:%s/ *<bar> */,/g<cr>
" }}}
" ##### LookML {{{
" Sets YAML syntax for *.lookml files.
autocmd BufRead,BufNewFile *.lookml set filetype=yaml
" }}}
" }}}
" ##### Local Vim Configurations {{{
" Sets YAML syntax for *.lookml files.
if filereadable(glob("~/.vimrc.local"))
    source ~/.vimrc.local
endif
" }}}
