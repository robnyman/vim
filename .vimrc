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

" Tab switching shortcuts
if has("gui_macvim")
    " Press Ctrl-Tab to switch between open tabs (like browser tabs) to 
    " the right side. Ctrl-Shift-Tab goes the other way.
    noremap <C-Tab> :tabnext<CR>
    noremap <C-S-Tab> :tabprev<CR>

    " Switch to specific tab numbers with Command-number
    noremap <D-1> :tabn 1<CR>
    noremap <D-2> :tabn 2<CR>
    noremap <D-3> :tabn 3<CR>
    noremap <D-4> :tabn 4<CR>
    noremap <D-5> :tabn 5<CR>
    noremap <D-6> :tabn 6<CR>
    noremap <D-7> :tabn 7<CR>
    noremap <D-8> :tabn 8<CR>
    " Command-9 goes to the last tab
    noremap <D-9> :tablast<CR>
endif

" Indenting code blocks
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
