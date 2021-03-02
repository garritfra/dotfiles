set nocompatible              " be iMproved, required
filetype off                  " required

" Install vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'scrooloose/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'prettier/vim-prettier'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'lifepillar/vim-mucomplete'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Vim Wiki
Plug 'vimwiki/vimwiki'

" DWM bindings
Plug 'spolu/dwm.vim'

" Defines the sneak motion
Plug 'justinmk/vim-sneak'

" HTML auto completion
Plug 'alvan/vim-closetag'

Plug 'w0rp/ale'

" Antimony syntax highlighting
Plug 'antimony-lang/antimony.vim'
call plug#end()

filetype plugin indent on    " required

let mapleader=" "                           " Set leader key
syntax on                                   " Enable syntax highlighting
call matchadd('ColorColumn', '\%81v', 100)  " Show a column after 80 chars
set number relativenumber                   " Show line numbers in relative manner
set mouse=a                                 " Enable mouse
set mousemodel=popup_setpos
set tabstop=4
set shiftwidth=2
set smartindent
set expandtab
set backspace=indent,eol,start
set showmatch
set ignorecase
set hidden
set linebreak
set laststatus=2
set noshowmode

" CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|target\|git'
let g:ctrlp_show_hidden = 1

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
let b:ale_fixers = {'javascript': ['prettier', 'eslint'], 'rust': ['rustfmt'], 'php': ['php_cs_fixer']}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'rust': ['rustfmt'],
\   'php': ['php_cs_fixer']
\}

let g:ale_rust_rls_executable = '/home/omar/.cargo/bin/rls'
let g:ale_rust_rls_toolchain = 'stable'
let g:ale_fix_on_save = 0

" NerdTree

let NERDTreeShowHidden=1

" VimWiki

let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" Colorscheme
" colorscheme onedark

" Autoclose Brackets
" inoremap {<cr> {<cr>}<c-o><s-o>
" inoremap [<cr> [<cr>]<c-o><s-o>
" inoremap (<cr> (<cr>)<c-o><s-o>
" noremap , <C-w>w

" Remove newbie crutches in Command Mode
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <Up> <Nop>

" Remove newbie crutches in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

" Remaps
:autocmd BufWritePost * ALEFix

" Leader Remaps
nnoremap <leader><Right> :tabn<CR>
nnoremap <leader><Left> :tabp<CR>
nnoremap <leader>gd :ALEGoToDefinition<CR>
nnoremap <leader>f :ALEFix<CR>

nnoremap k gk
nnoremap j gj

" NerdTree bindings
nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

