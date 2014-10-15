" Plugins:
" pathogen.vim
" command-t
" nerdtree
" tlib_vim
" vim-addon-mw-utils
" vim-multiple-cursors
" vim-sensible
" vim-snipmate
" vim-snippets
" vim-surround


set nocompatible
set backspace=indent,eol,start
set autoindent

" Tab settings
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Pathogen plugins
execute pathogen#infect()
syntax on
filetype plugin indent on

" Line numbering
set nu

"Ignore case in search
set ignorecase

" leader key
let mapleader=","

" NERDTree toggle
nnoremap <Leader>n :NERDTreeToggle<cr>

" Surround
vmap s S

" Link wrapper
vmap <Space>l c<a href="<C-r>+"><C-r>"</a>

" Tag <a href="http://favstar.fm/users/robertnyman/recent">wrapper</a>
map <Leader>w ysip<C-t>
vmap <Space>w sip<C-t>


" For navigating wrapped lines
nnoremap j gj
nnoremap k gk

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Command-T: double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

" color scheme
colorscheme Twilight
