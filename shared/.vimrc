call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'dense-analysis/ale'
Plug 'bfredl/nvim-miniyank'
Plug 'mcchrish/nnn.vim'
Plug 'mbbill/undotree'
call plug#end()
filetype plugin on
filetype indent on
syntax on
set breakindent
set breakindentopt=shift:2
set encoding=utf-8
set incsearch
set tabstop=4
set shiftwidth=4
set expandtab
set sessionoptions=blank,buffers,sesdir,folds,help,tabpages,winsize
let maplocalleader=","
let g:vimtex_view_method = 'zathura'
let g:tex_flavor = 'latex'
let g:tex_conceal=""
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-y>"
let g:goyo_width = 100
let g:ale_fixers = { 'python' : ['black', 'autopep8']}
let g:indentLine_color_term = 7
let g:indentLine_char = '>'
let g:limelight_conceal_ctermfg = 7

nnoremap <C-s> :Goyo <CR>

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

autocmd VimEnter * ALEDisable

inoremap jj <Esc>

autocmd FileType python nnoremap ,t :!python % 
autocmd FileType haskell nnoremap ,t :!runhaskell % 
autocmd FileType sh nnoremap ,t :!bash % 

au BufWinLeave *.tex mks!
let path = expand('%:p:h')
au BufWinEnter *.tex silent! exec 'source' path . '/Session.vim'

au VimEnter * hi NonText ctermfg=8
au VimEnter * hi search ctermbg=8 ctermfg=15
au VimEnter * hi EndOfBuffer ctermfg=0
au VimEnter * hi CursorLineNr ctermfg=8
au VimEnter * hi LineNr ctermfg=8
set laststatus=0 ruler
set list lcs=tab:>\ 
set number
set relativenumber

map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)
map ,n <Plug>(miniyank-cycle)
map ,N <Plug>(miniyank-cycleback)
nnoremap ,h :nohl <CR>
nnoremap ,u :UndotreeToggle <CR>
