call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'lervag/vimtex'
Plug 'mcchrish/nnn.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
"Plug 'Valloric/YouCompleteMe'
"Plug 'dense-analysis/ale'
"Plug 'bfredl/nvim-miniyank'
Plug 'mbbill/undotree'
"Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
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
let g:vimtex_quickfix_open_on_warning = 0
let g:tex_flavor = 'latex'
let g:tex_conceal=""
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-y>"
"let g:ale_fixers = { 'python' : ['black', 'autopep8']}
let g:firenvim_config = { 'localSettings': { '.*': { 'takeover': 'never' } } }

autocmd FileType python nnoremap ,t :!python % 
autocmd FileType haskell nnoremap ,t :!runhaskell % 
autocmd FileType sh nnoremap ,t :!bash % 

augroup tex
    au BufReadPre *.tex silent! exec "set undofile undodir=" . expand('%:p:h')
    au BufWinEnter *.tex silent! exec 'source' . expand('%:p:h') . '/Session.vim'
    au BufWinLeave *.tex mks!
augroup END

"au VimEnter * ALEDisable
au VimEnter * hi search ctermbg=8 ctermfg=15
au VimEnter * hi EndOfBuffer ctermfg=0
au VimEnter * hi CursorLineNr ctermfg=8
au VimEnter * hi LineNr ctermfg=8
au VimEnter * :COQnow
set laststatus=0 ruler
set number relativenumber

"map p <Plug>(miniyank-autoput)
"map P <Plug>(miniyank-autoPut)
"map ,n <Plug>(miniyank-cycle)
"map ,N <Plug>(miniyank-cycleback)
nnoremap ,h :nohl <CR>
nnoremap ,f :FZF <CR>
"nnoremap ,N :NnnExplorer <CR>
nnoremap <silent> ,u :UndotreeToggle <CR>
inoremap jj <Esc>

"if !exists('g:ycm_semantic_triggers')
"    let g:ycm_semantic_triggers = {}
"endif
"au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme
"
"require("coq_3p") {
"    { src = "vimtex", short_name = "vTEX" }
"}

