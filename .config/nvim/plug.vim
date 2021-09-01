call plug#begin()
Plug 'gruvbox-community/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'prettier/vim-prettier'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'luochen1990/rainbow'
Plug 'preservim/nerdcommenter'
Plug 'kshenoy/vim-signature'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Defines the sneak motion
Plug 'justinmk/vim-sneak'

" HTML auto completion
Plug 'alvan/vim-closetag'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Antimony syntax highlighting
Plug 'antimony-lang/antimony.vim'

" Display color codes
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

call plug#end()
