set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'wakatime/vim-wakatime'
Plugin 'kien/ctrlp.vim'
Plugin 'sbdchd/neoformat'
Plugin 'joshdick/onedark.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'lifepillar/vim-mucomplete'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

call vundle#end()            " required
filetype plugin indent on    " required

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

autocmd BufWritePre,TextChanged,InsertLeave *.js Neoformat  " Autoformat

"completion settings:
set completeopt+=menuone
set completeopt+=noselect
set completeopt+=noinsert
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
let g:mucomplete#enable_auto_at_startup = 1



syntax on                       " Enable syntax highlighting
set number relativenumber       " Show line numbers in relative manner
set mouse=a                     " Enable mouse
set tabstop=4
set shiftwidth=4
set smartindent
set expandtab
set backspace=indent,eol,start
set showmatch
set ignorecase
set hidden
set linebreak
set laststatus=2
set noshowmode

" Colorscheme
" colorscheme onedark

" Autoclose Brackets
inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>
noremap , <C-w>w
