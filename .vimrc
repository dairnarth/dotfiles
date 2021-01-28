syntax on

set nocompatible
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set splitbelow splitright
set background=dark

set colorcolumn=80
highlight colorcolumn ctermbg=0 guibg=white

call plug#begin('~/.vim/plugged')

Plug 'junegunn/goyo.vim'
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'

call plug#end() 

autocmd vimenter * ++nested colorscheme gruvbox

hi Normal guibg=NONE ctermbg=NONE

command! Prose inoremap <buffer> . .<C-G>u|
            \ inoremap <buffer> ! !<C-G>u|
            \ inoremap <buffer> ? ?<C-G>u|
            \ setlocal spell spelllang=en nolist nowrap tw=80 fo=t1 fdm=manual|
            \ augroup PROSE|
            \   autocmd InsertEnter <buffer> set fo+=a|
            \   autocmd InsertLeave <buffer> set fo-=a|
            \ augroup END|

command! Code silent! iunmap <buffer> .|
            \ silent! iunmap <buffer> !|
            \ silent! iunmap <buffer> ?|
            \ setlocal nospell nolist nowrap tw=0 fo=tcq fo-=a fdm=indent|
            \ silent! autocmd! PROSE * <buffer>

if executable('rg')
    let g:rg_derive_root='true'
endif

nnoremap <s-tab> za

let mapleader =" "

    map <leader>f :Goyo \| set linebreak<CR>

