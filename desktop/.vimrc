call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/goyo.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'dense-analysis/ale'
Plug 'Yggdroot/indentLine'
call plug#end()
filetype plugin on
filetype indent on
syntax on
set breakindent
set breakindentopt=shift:2
set encoding=utf-8
set incsearch
let maplocalleader=","
"let g:tex_flavor='latex'
"let g:livepreview_previewer = 'zathura'
"let g:Tex_DefaultTargetFormat = 'pdf'
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
"augroup MyIMAPs
"    au!
"    au VimEnter * call IMAP('``i','\indent <++>','tex')
"    au VimEnter * call IMAP('``s','\sum_{<+var+>}^{<+num+>}<++>','tex')
"    au VimEnter * call IMAP('``p','\prod_{<+var+>}^{<+num+>}<++>','tex')
"    au VimEnter * call IMAP('``b','\binom{<+n+>}{<+r+>}<++>','tex')
"    au VimEnter * call IMAP('``\','\left| <++> \right| <++>','tex')
"    au VimEnter * call IMAP('``|','\left\Vert <++> \right\Vert <++>','tex')
"    au VimEnter * call IMAP('``,','\left\langle <++> \right\rangle <++>','tex')
"    au VimEnter * call IMAP('``mb','\mathbb{<++>} <++>','tex')
"    au VimEnter * call IMAP('``I','\int_{<+bot+>}^{<+top+>} \! <+func+> \, \mathrm{d}<+var+> <++>','tex')
"    au VimEnter * call IMAP('``l','\lim_{<+var+> \to <+lim+>} <+f+>','tex')
"augroup END 
nnoremap <C-W> :pc<CR>
nnoremap <C-s> :Goyo <CR>

inoremap jj <Esc>

autocmd VimEnter * ALEDisable

autocmd FileType python nnoremap ,t :!python % 
autocmd FileType haskell nnoremap ,t :!runhaskell % 

au VimEnter * hi NonText ctermfg=7
au VimEnter * hi search ctermbg=8 ctermfg=15
au VimEnter * hi EndOfBuffer ctermfg=0
set laststatus=0 ruler
set list lcs=tab:>\ 
