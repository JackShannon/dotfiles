set nocompatible              " be iMproved, required
filetype off                  " required

let $MYVIMRC='~/Documents/Projects/dotfiles/vimrc'

" set the runtime path to include Vundle and initialize
set rtp+=~/Vim/vimfiles/bundle/Vundle.vim/
let path='~/Vim/vimfiles/bundle'
call vundle#begin(path)
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-sensible'

"Plugin 'ervandew/supertab'
"Plugin 'scrooloose/syntastic'

"Plugin 'rking/ag.vim'

Plugin 'tpope/vim-vinegar'
Plugin 'kien/ctrlp.vim'

Plugin 'noahfrederick/vim-hemisu'
Plugin 'reedes/vim-colors-pencil'
Plugin 'altercation/vim-colors-solarized'

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
autocmd Filetype java setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype javascript setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

" Visuals
set number
set linespace=8
set cursorline
set showcmd
set nowrap
set fillchars=""
set hlsearch

colorscheme solarized
set background=dark

" Mouse enabled for normal and visual mode only
if has('mouse')
  set mouse=nv
endif

" Leader is comma
"let mapleader="," 
map <space> <leader>

" Make comma \
"nnoremap \ ,

" Open ag.vim
nnoremap <leader>a :Ag

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Disable hjkl keys
"noremap k <NOP>
"noremap j <NOP>
"noremap h <NOP>
"noremap l <NOP>

set history=5000
set hidden
set noswapfile

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

set statusline=
set statusline+=%f\ %2*%m\ %1*%h
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%{fugitive#statusline()}
set statusline+=%*
set statusline+=%r%=[%{&encoding}\ %{&fileformat}\ %{strlen(&ft)?&ft:'none'}]\ %12.(%c:%l/%L%)
set laststatus=2
