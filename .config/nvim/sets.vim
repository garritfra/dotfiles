syntax on                                   " Enable syntax highlighting
call matchadd('ColorColumn', '\%81v', 100)  " Show a column after 80 chars

set number                                  " Show line numbers
set mouse=a                                 " Enable mouse
set updatetime=300                          " Quicker update time means snappier feedback
set mousemodel=popup_setpos
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set expandtab
set backspace=indent,eol,start
set showmatch
set noswapfile
set nobackup
set nowritebackup
set shortmess+=c                            " Don't pass messages to |ins-completion-menu|.
set cmdheight=2                             " Give more space for displaying messages.
set ignorecase
set scrolloff=8
set hidden
set linebreak
set laststatus=2
set noshowmode
set nohlsearch

" Reload changes from disk whenever the file changed
" https://stackoverflow.com/a/41012424/9046809
set autoread
autocmd FocusGained * checktime
