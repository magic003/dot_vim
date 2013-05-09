" ------------------------------------------
"  Vundle
" ------------------------------------------
set nocompatible                        " We're running Vim, not Vi!
filetype off                            " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle. " required!
Bundle 'gmarik/vundle'                  

" ---------------------------
"  My Bundles
" ---------------------------

" Automatically detect file types. (must turn on after Vundle)
filetype plugin indent on               " required!

" ------------------------------------------
"  Regular Vim Configurations
" ------------------------------------------

" -------------
"  Color
" -------------
colorscheme koehler

" -----------------
"  File encodings
" -----------------
set fileencodings=utf-8,gbk

" ----------------
"  Backups
" ----------------
set backup
set backupdir=~/.vim/data/backup
set directory=~/.vim/data/swap

" ----------------
"  UI
" ----------------
set nu
set colorcolumn=80

" ---------------
"  Behaviors
" ---------------
syntax on                               " Enable syntax highlighting

" ---------------
"  Text Format
" ---------------
set expandtab
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4

" ------------------
"  Auto Commands
" ------------------

" autoindent with two spaces, always expand tabs
autocmd filetype ruby,eruby,yaml setlocal shiftwidth=2 softtabstop=2 expandtab

