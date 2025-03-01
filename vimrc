""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Show (partial) command in the last line of the screen.
set showcmd

" Set to auto read when a file is changed from the outside.
set autoread

" Detect filetype.
filetype plugin indent on

" Sets how many lines of history VIM has to remember.
set history=700

" Set backspace config.
set backspace=eol,start,indent

" Reload .vimrc when it's edited.
autocmd! BufWritePost .vimrc source ~/.vimrc





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Displays
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Command-line auto-completion. Use <Tab> key when insert commands.
set wildmenu

" Always show current postion.
set ruler

" Always show line numbers.
set number

" The command line height. Default value is actually 1.
set cmdheight=1

" Set status line which shows you the most useful infomations.
set laststatus=2

" '\' is 'line-continuation' charactor here. See 'help line-continuation'.
if !&diff
    set statusline=%F%m%r%h%w%y
        \%=
        \%{\"[\".(&fenc==\"\"?&enc:&fenc).(
        \(exists(\"+bomb\")\ &&\ &bomb)?\",BOM\":\"\").\"]\"}
        \\ [%{&ff}]\ [%l,%v(%p%%)]\ [LEN=%L]\ [\\%03.3b,\0x%04.4B]
endif

" Set tabline
" set showtabline=2 " always show tabs in gvim, but not vim

" Enable syntax highlight.
syntax on

" Set font according to system.
if has("win32")
    set guifont=DejaVu\ Sans\ Mono:h10
elseif has("mac")
    set guifont=Menlo:h14
else
    set guifont=DejaVu\ Sans\ Mono\ 10
endif

" Set highlighting theme. 
if has("gui_running")
    colorscheme desert
endif

" Highlight where it is over 79 columns
" This 2 lines must be loaded after 'syntax on', 'guifont', 'colorschem',
" or these settings will overwrite the setting you want.
highlight OverLength ctermbg=darkred ctermfg=white guibg=#666666
match OverLength /\%79v.*/

" Set the default size of the window
" if has("win32")
"     au GUIEnter * simalt ~x
" else
"     set lines=24
"     set columns=83
" endif

" When a bracket is inserted, shows the matching one briefly.
set showmatch





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Encoding and Languages
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Always use utf-8. Defualt is latin1 or value from system $LANG
let &termencoding=&encoding
set encoding=utf-8

" Always save files in utf-8.
set fileencoding=utf-8

" Encoding detection order. The 'ucs-bom' is special value.
set fileencodings=ucs-bom,utf-8,cp936,latin1

" Always use \n as end-of-line for new files.
set fileformat=unix

" File format detection order.
set fileformats=unix,mac,dos

" Vim messages always in English.
language messages en_US.utf-8





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Highlight search things.
set hlsearch

" Make search act like search in address line of modern browsers.
" Display the matche while typing.
set incsearch

" Stops the searching at the end of the file.
set nowrapscan

" Ignore case when searching.
set ignorecase
set smartcase

" Pattern magic action.
set magic

set iskeyword+=-





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





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab, Indent and Linefeed
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" use spaces instead of <tab> character.
set expandtab

" the width of '>' operator indenting.
set shiftwidth=4

set tabstop=4

" 4 spaces for one pressing, '<tab>' character for twice pressing.
set softtabstop=4

set smarttab

set linebreak
set textwidth=500

set autoindent
set smartindent
set wrap





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Persistent swap, backup and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Persistent backup
try
    set dir=~/.vim/temp
catch
endtry

" Persistent backup
try
    set backupdir=~/.vim/temp
catch
endtry

" Persistent undo
try
    set undodir=~/.vim/temp
    set undofile
catch
endtry





" End Of File. Tue Dec 10 08:21:15 UTC 2013
