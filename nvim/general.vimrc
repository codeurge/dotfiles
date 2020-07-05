"Config Section
if (has("termguicolors"))
  set termguicolors
endif
lua require'colorizer'.setup()

syntax on
filetype plugin indent on
set mouse=""
set noswapfile " ooh dangerous, no swap
set shell=/bin/zsh " use zsh.
set encoding=utf-8 " utf-8 encoding
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=yes
set nu
set autoindent " auto indent new lines
set smartindent " be smart about indents
set nowrap " don't wrap lines
set tabstop=2 " set tab equivilant to 2 spaces
set shiftwidth=2
set expandtab
set visualbell " shut the fuck up
set foldmethod=indent
set foldlevel=1
set nofoldenable
set hlsearch
set colorcolumn=80
set showtabline=2
set previewheight=30

set t_Co=256
let g:dracula_colorterm = 0
colorscheme dracula

let mapleader = " " " lead with ,

