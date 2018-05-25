set nocompatible              " be iMproved, required
filetype off                  " required


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'itchyny/lightline.vim'
Plugin 'maralla/completor.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'wakatime/vim-wakatime'
Plugin 'kien/ctrlp.vim'
Plugin 'prettier/vim-prettier'
Plugin 'joshdick/onedark.vim'

call vundle#end()            " required
filetype plugin indent on    " required

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

