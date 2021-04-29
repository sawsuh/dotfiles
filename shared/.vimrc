call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe'
Plug 'dense-analysis/ale'
Plug 'bfredl/nvim-miniyank'
Plug 'mbbill/undotree'
call plug#end()
filetype plugin on
filetype indent on
syntax on
set breakindent breakindentopt=shift:2
set encoding=utf-8
set incsearch
set tabstop=4 shiftwidth=4 expandtab
set sessionoptions=blank,buffers,sesdir,folds,help,tabpages,winsize
let maplocalleader=","
let g:vimtex_view_method = 'zathura'
let g:tex_flavor = 'latex'
let g:tex_conceal=""
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-y>"
let g:ale_fixers = { 'python' : ['black', 'autopep8']}

autocmd VimEnter * ALEDisable

inoremap jj <Esc>

autocmd FileType python nnoremap ,t :!python % 
autocmd FileType haskell nnoremap ,t :!runhaskell % 
autocmd FileType sh nnoremap ,t :!bash % 

augroup tex
    au BufWinLeave *.tex mks!
    au BufWinEnter *.tex silent! exec 'source' . expand('%:p:h') . '/Session.vim'
augroup END

au VimEnter * hi search ctermbg=8 ctermfg=15
au VimEnter * hi EndOfBuffer ctermfg=0
au VimEnter * hi CursorLineNr ctermfg=8
au VimEnter * hi LineNr ctermfg=8
set laststatus=0 ruler
set number relativenumber

map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)
map ,n <Plug>(miniyank-cycle)
map ,N <Plug>(miniyank-cycleback)
nnoremap ,h :nohl <CR>
nnoremap <silent> ,u :UndotreeToggle <CR>
