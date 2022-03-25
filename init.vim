" Vim plugin manager
" https://github.com/junegunn/vim-plug
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'ap/vim-css-color'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'lifepillar/pgsql.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tc50cal/vim-terminal'
Plug 'preservim/tagbar'
Plug 'jalvesaq/Nvim-R'
Plug 'ncm2/ncm2'
Plug 'gaalcaras/ncm-R'
Plug 'Raimondi/delimitMate'
" Plug 'roxma/nvim-yarp'
" Plug 'patstockwell/vim-monokai-tasty'
" Plug 'itchyny/lightline.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" remapping navigation by displayed line
nnoremap j gj
nnoremap k gk

" remapping Esc
inoremap <C-[> <Esc>

" exchange word under cursor with the next word without moving the cursor
:nnoremap <silent> gr "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o>/\w\+\_W\+<CR><c-l>:nohlsearch<CR>

" swap the current word with the previous, keeping cursor on current word
:nnoremap <silent> gl "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>:nohlsearch<CR>

" wrapping text
set wrap

" hybrid relative line numbering
set number relativenumber

" disable compatibility with VI to avoid unexpected issues
set nocompatible

" pinpoint exact location of the cursor
" set cursorline
" set cursorcolumn

" set shift width to 4 spaces
set shiftwidth=4

" tabs for indentation and spaces for alignment
:set smarttab

" set tab width to 4 columns
set tabstop=4

" use space characters instead of tabs
set expandtab

" turn syntax highlighting on
syntax on

" enable detection of file type
filetype on

" enable and load plugins for detected file type
filetype plugin on

" load an indent file for the detected file type
filetype indent on
