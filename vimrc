set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-sensible'

Plugin 'rking/ag.vim'

Plugin 'tpope/vim-vinegar'
Plugin 'kien/ctrlp.vim'

Plugin 'noahfrederick/vim-hemisu'
Plugin 'reedes/vim-colors-pencil'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Language specific
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

" Visuals
set number
set linespace=8
set cursorline
set showcmd

colorscheme hemisu
set background=light

" Mouse enabled for normal and visual mode only
if has('mouse')
  set mouse=nv
endif

" Leader is comma
let mapleader="," 
" Make comma \
nnoremap \ ,

" Open ag.vim
nnoremap <leader>a :Ag

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Disable arrow keys
noremap k <NOP>
noremap j <NOP>
noremap h <NOP>
noremap l <NOP>

set history=5000
set hidden

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

