call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'lervag/vimtex'
Plug 'mcchrish/nnn.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'micangl/cmp-vimtex'

Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

Plug 'mbbill/undotree'
call plug#end()

lua <<EOF
  
  local cmp = require'cmp'
  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["UltiSnips#Anon"](args.body) 
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), 
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'ultisnips' }, 
    }, {
      { name = 'buffer' },
    })
  })
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'git' }, 
    }, {
      { name = 'buffer' },
    })
  })
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    }),
    matching = { disallow_symbol_nonprefix_matching = false }
  })
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  require('lspconfig').texlab.setup {
    capabilities = capabilities
  }

EOF

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
let g:firenvim_config = { 'localSettings': { '.*': { 'takeover': 'never' } } }
let g:fzf_vim = {}
let g:fzf_vim.buffers_jump = 1



autocmd FileType python nnoremap ,t :!python % 
autocmd FileType haskell nnoremap ,t :!runhaskell % 
autocmd FileType sh nnoremap ,t :!bash % 

augroup tex
    au BufReadPre *.tex silent! exec "set undofile undodir=" . expand('%:p:h')
    au VimEnter *.tex silent! exec 'source' . expand('%:p:h') . '/Session.vim'
    au BufWinLeave *.tex mks!
augroup END

au VimEnter * hi search ctermbg=8 ctermfg=15
au VimEnter * hi EndOfBuffer ctermfg=0
au VimEnter * hi CursorLineNr ctermfg=8
au VimEnter * hi LineNr ctermfg=8
set laststatus=0 ruler
set number relativenumber

nnoremap ,h :nohl <CR>
nnoremap ,b :Buffers <CR>
nnoremap ,f :Files <CR>
nnoremap <silent> ,u :UndotreeToggle <CR>
inoremap jj <Esc>
