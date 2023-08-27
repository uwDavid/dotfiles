set nocompatible "to work with vi
syntax on "syntax highlighting
set showmatch "bracket highlighting

" use 4 spaces instead of tabs during formatting
set expandtab
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent

" Disable backup buffers
set noswapfile 
set nobackup 
set noerrorbells
set undodir=~/.vim/undodir
set undofile

packadd! dracula
colorscheme dracula
set background=dark

" Disable the default Vim startup message.
set shortmess=atI

" Show line numbers.
set number
"set relativenumber

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
" 'Q' in normal mode enters Ex mode. You almost never want this.
nmap Q <Nop> 


" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse=a

" Setting leaderkey functions
let mapleader="," 

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize30<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
