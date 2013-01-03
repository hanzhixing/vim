""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General (2012-02-07)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Load pathogen plugin anyway. important!
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
"source ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim
" use ':Helptags' to create help tags file

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Show (partial) command in the last line of the screen
set showcmd

" Set to auto read when a file is changed from the outside
set autoread

" Set to auto change directory
"set autochdir

" Detect filetype
filetype plugin indent on

" Sets how many lines of history VIM has to remember
set history=700

" Set backspace config
set backspace=eol,start,indent

" Reload .vimrc when it's edited.
autocmd! bufwritepost .vimrc source ~/.vimrc





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Displays
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" TODO
set wildmenu

" Always show current postion
set ruler

" Always show line numbers
set number

" The command line height
set cmdheight=1

" TODO
set hidden

" Set status line which shows you the most useful infomations
set laststatus=2

" '\' is 'line-continuation' charactor here. See 'help line-continuation'.
set statusline=%F%m%r%h%w%y
    \%=
    \%{\"[\".(&fenc==\"\"?&enc:&fenc).(
    \(exists(\"+bomb\")\ &&\ &bomb)?\",BOM\":\"\").\"]\"}
    \\ [%{&ff}]\ [%l,%v(%p%%)]\ [LEN=%L]\ [\\%03.3b,\0x%04.4B]

" Enable syntax highlight
" TODO
syntax enable
syntax on

" Set font according to system
if has("unix") && !has("gui_macvim")
    set guifont=Monospace\ 10
    set shell=/bin/bash
elseif has("win32")
    set guifont=Bitstream\ Vera\ Sans\ Mono:h10
elseif has("gui_macvim")
    set guifont=Menlo:h14
    set shell=/bin/bash
endif

" Set highlighting theme. 
if (has("gui_macvim"))
    colorscheme desert
else
    colorscheme evening
endif

" Highlight where it is over line limit
" this 4 lines must be located after 'syntax on', 'guifont', 'colorschem'
highlight OverLineLimit81 ctermbg=darkred ctermfg=white guibg=#444444
highlight OverLineLimit121 ctermbg=darkred ctermfg=white guibg=#888888
match OverLineLimit81 /\%81v.*/
match OverLineLimit121 /\%121v.*/

" Set the default size of the window
" if has("unix")
"     set lines=24
"     set columns=83
" elseif has("win32")
"     au GUIEnter * simalt ~x
" endif

set showmatch





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Encoding and Languages
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set encoding=utf8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese
let &termencoding=&encoding
set langmenu=en_US.utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages en_US.utf-8




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Highlight search things
set hlsearch

" Make search act like search in modern browsers
" Display the matche while typing
set incsearch

" Stops the searching at the end of the file
set nowrapscan

"Ignore case when searching
set ignorecase
set smartcase

" TODO
set magic





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has('gui_running')

    " Never want a menubar and toolbar
    set guioptions-=m
    set guioptions-=T

    " Never want a scrollbar
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R

    " Disable mouse
    "set mouse-=a

endif


if has("gui_running")
    colorscheme desert
endif



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab, Indent and Linefeed
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" use spaces instead of <tab> character
set expandtab

" the width of '>' operator indenting
set shiftwidth=4

set tabstop=4

" 4 spaces for one pressing, '<tab>' character for twice pressing
set softtabstop=4

set smarttab

set linebreak
set tw=500

set autoindent
set smartindent
set wrap

set fileencoding=utf-8
set fileformats=unix,dos,mac
set fileformat=unix





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowritebackup
set noswapfile

" Persistent undo
try
    if has("win32")
        set undodir=C:\Windows\Temp
    else
        set undodir=~/.vim/undodir
    endif

    set undofile
catch
endtry





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Taglist
if has("mac") || has("gui_macvim")
    let Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8/bin/ctags'
elseif has("win32")
    let Tlist_Ctags_Cmd='D:\programs\ctags58\ctags.exe'
else
    let Tlist_Ctags_Cmd='/usr/bin/ctags'
endif

let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Compact_Format = 1
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let tlist_php_settings='php;f:function' 

map <F11> :TlistToggle<cr>
vmap <F11> <esc>:TlistToggle<cr>
imap <F11> <esc>:TlistToggle<cr>

" Nerdtree
let Tlist_Use_Right_Window = 1
map <F10> :NERDTreeToggle<cr>
vmap <F10> <esc>:NERDTreeToggle<cr>
imap <F10> <esc>:NERDTreeToggle<cr>





"EOF
