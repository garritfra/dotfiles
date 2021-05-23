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

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

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
set tabstop=4 softtabstop=4
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

let g:ale_rust_rls_executable = '~/.cargo/bin/rls'
let g:ale_rust_rls_toolchain = 'stable'
" let g:ale_fix_on_save = 0

" NerdTree

let NERDTreeShowHidden=1
let NERDTreeCustomOpenArgs={'file':{'where': 't'}}

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Mirror the NERDTree before showing it. This makes it the same on all tabs.
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>

" -----------------------
" Remaps
" -----------------------


:autocmd BufWritePost * ALEFix

" Leader Remaps
nnoremap <leader><Right> :tabn<CR>
nnoremap <leader><Left> :tabp<CR>
nnoremap <leader>gd :ALEGoToDefinition<CR>
nnoremap <leader>f :ALEFix<CR>

nnoremap k gk
nnoremap j gj

" NerdTree bindings
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" ctrl up/down (Move lines)
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" ctrl shift f (Find in directory)
nnoremap <C-F> :Rg<CR>
vnoremap <C-F> :Rg<CR>

" Use yank to copy to clipboard
vnoremap y "*y

" ctrl w (close tab)
nnoremap <C-w> :tabclose<CR>
