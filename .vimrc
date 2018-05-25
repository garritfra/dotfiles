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
Plugin 'prettier/vim-prettier'
Plugin 'joshdick/onedark.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'lifepillar/vim-mucomplete'
 
call vundle#end()            " required
filetype plugin indent on    " required

"completion settings:
set completeopt+=menuone
set completeopt+=noselect
set completeopt+=noinsert
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
let g:mucomplete#enable_auto_at_startup = 1


syntax on
set number relativenumber
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set laststatus=2
set noshowmode

" Colorscheme
colorscheme onedark

" Autoclose Brackets
inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>

