" general
filetype off
set swapfile
set backupdir=~/tmp
set cursorline
set autochdir
set noshowmode
autocmd BufEnter * lcd %:p:h

" mappings
set pastetoggle=<F3>
map <esc><esc> :w<cr>
map <C-f> :CtrlP<CR>
map <F2> :NERDTreeToggle<cr>
nmap > :bnext<CR>
nmap < :bprevious<CR>
nnoremap <space>w :w<cr>
nnoremap <space>q :q<cr>
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap j jzz
nnoremap k kzz
nnoremap ; :

" highlighting, colorscheme
syntax on
colorscheme jellybeans
set hlsearch

" line numbering
set number
set relativenumber

" tab shiz
set noexpandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set autoindent

" statusline
set laststatus=2
let g:bufferline_echo = 0
let g:bufferline_modified = '*'
let g:bufferline_show_bufnr = 1
let g:airline_powerline_fonts = 1

" vim-plugs
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'bling/vim-bufferline'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rstacruz/sparkup'

call plug#end()
