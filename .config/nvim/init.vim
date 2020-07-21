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
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'Valloric/YouCompleteMe'
Plugin 'w0rp/ale'

call vundle#end()            " required
filetype plugin indent on    " required

let mapleader=" "                           " Set leader key
syntax on                                   " Enable syntax highlighting
call matchadd('ColorColumn', '\%81v', 100)  " Show a column after 80 chars
set number relativenumber                   " Show line numbers in relative manner
set mouse=a                                 " Enable mouse
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

" CtrlP ignored files
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|target\|git'

" when running at every change you may want to disable quickfix
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat = 0
autocmd BufWritePre,TextChanged,InsertLeave *.js,*.css,*.scss,*.less PrettierAsync

"completion settings:
set completeopt+=menuone
set completeopt+=noselect
set completeopt+=noinsert
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
let g:mucomplete#enable_auto_at_startup = 1

"Vim A.L.E
    "Enable A.L.E
let g:ale_completion_enabled = 1
let g:ale_sign_error = "✗"
let g:ale_sign_warning = "⚠"

"A.L.E Rust Settings
"Various settings for Rust
let g:ale_linters = {'rust': ['rls']}
let b:ale_fixers = {'javascript': ['prettier', 'eslint'], 'rust': ['rustfmt']}
let g:ale_rust_rls_executable = '/home/omar/.cargo/bin/rls'
let g:ale_rust_rls_toolchain = 'stable'

" Colorscheme
" colorscheme onedark

" Autoclose Brackets
" inoremap {<cr> {<cr>}<c-o><s-o>
" inoremap [<cr> [<cr>]<c-o><s-o>
" inoremap (<cr> (<cr>)<c-o><s-o>
" noremap , <C-w>w

" Remaps
:autocmd BufWritePost * ALEFix

" Leader Remaps
nnoremap <leader><Right> :tabn<CR>
nnoremap <leader><Left> :tabp<CR>
nnoremap <leader>gd :YcmCompleter GoTo<CR>
nnoremap <leader>f :ALEFix<CR>
