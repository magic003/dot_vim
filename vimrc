" ------------------------------------------
"  Vundle
" ------------------------------------------
set nocompatible                        " We're running Vim, not Vi!
filetype off                            " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle. " required!
Plugin 'gmarik/Vundle.vim'                  

" ---------------------------
"  My Bundles
" ---------------------------
Plugin 'https://github.com/fholgado/minibufexpl.vim.git'
Plugin 'https://github.com/kien/ctrlp.vim.git'

Plugin 'https://github.com/majutsushi/tagbar.git'

" ruby
Plugin 'https://github.com/magic003/vim-rubytest.git'

" dart
Plugin 'https://github.com/dart-lang/dart-vim-plugin.git'

call vundle#end()

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
set mouse=a

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
autocmd filetype sh setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd filetype html,htm setlocal shiftwidth=2 softtabstop=2 expandtab

" ------------------
"  Key Mappings
" ------------------

let mapleader = ","

" minibufexpl.vim

nnoremap <Leader>f  :MBEFocus<cr>
nnoremap <Leader>bn :MBEbn<cr>
nnoremap <Leader>bp :MBEbp<cr>
nnoremap <Leader>bf :MBEbf<cr>
nnoremap <Leader>bb :MBEbb<cr>
nnoremap <Leader>bd :MBEbd<cr>
nnoremap <Leader>bw :MBEbw<cr>
nnoremap <Leader>bu :MBEbun<cr>
nnoremap <Leader>bu :MBEbun<cr>

nnoremap <Leader>. :CtrlPTag<cr>
nnoremap <Leader>o :TagbarToggle<cr>

" rubytest.vim
"let g:rubytest_in_quickfix = 1
