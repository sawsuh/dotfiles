call plug#begin('~/.vim/plugged')
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'junegunn/goyo.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'dense-analysis/ale'
call plug#end()
filetype plugin on
filetype indent on
syntax on
set breakindent
set breakindentopt=shift:2
set encoding=utf-8
let g:tex_flavor='latex'
let g:livepreview_previewer = 'zathura'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:goyo_width = 100
let g:ale_fixers = { 'python' : ['black', 'autopep8']}
augroup MyIMAPs
    au!
    au VimEnter * call IMAP('``i','\indent <++>','tex')
    au VimEnter * call IMAP('``s','\sum_{<+var+>}^{<+num+>}<++>','tex')
    au VimEnter * call IMAP('``p','\prod_{<+var+>}^{<+num+>}<++>','tex')
    au VimEnter * call IMAP('``b','\binom{<+n+>}{<+r+>}<++>','tex')
    au VimEnter * call IMAP('``\','\left| <++> \right| <++>','tex')
    au VimEnter * call IMAP('``|','\left\Vert <++> \right\Vert <++>','tex')
    au VimEnter * call IMAP('``,','\left\langle <++> \right\rangle <++>','tex')
    au VimEnter * call IMAP('``mb','\mathbb{<++>} <++>','tex')
    au VimEnter * call IMAP('``I','\int_{<+bot+>}^{<+top+>} \! <+func+> \, \mathrm{d}<+var+> <++>','tex')
    au VimEnter * call IMAP('``l','\lim_{<+var+> \to <+lim+>} <+f+>','tex')
augroup END 
nnoremap <C-w> :Goyo <bar> :Goyo <CR>
autocmd VimEnter * Goyo
autocmd VimEnter * ALEDisable
