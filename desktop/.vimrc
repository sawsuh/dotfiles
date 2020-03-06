call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'dense-analysis/ale'
Plug 'Yggdroot/indentLine'
Plug 'bfredl/nvim-miniyank'
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
let maplocalleader=","
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_general_options = ''
let g:tex_conceal=""
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-y>"
let g:goyo_width = 100
let g:ale_fixers = { 'python' : ['black', 'autopep8']}
let g:indentLine_color_term = 7
let g:indentLine_char = '>'
let g:limelight_conceal_ctermfg = 7

nnoremap <C-s> :Goyo <bar> hi NonText ctermfg=7 <bar> hi search ctermbg=8 ctermfg=15 <bar> hi EndOfBuffer ctermfg=0 <CR>

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

autocmd VimEnter * ALEDisable

inoremap jj <Esc>

autocmd FileType python nnoremap ,t :!python % 
autocmd FileType haskell nnoremap ,t :!runhaskell % 

au VimEnter * hi NonText ctermfg=7
au VimEnter * hi search ctermbg=8 ctermfg=15
au VimEnter * hi EndOfBuffer ctermfg=0
set laststatus=0 ruler
set list lcs=tab:>\ 

map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)
map n <Plug>(miniyank-cycle)
map N <Plug>(miniyank-cycleback)
