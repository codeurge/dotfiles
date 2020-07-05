call plug#begin("~/.vim/plugged")
" Plugin Section
  Plug 'dracula/vim' " dracula theme
  Plug 'scrooloose/nerdtree' " nerdtree
  Plug 'ryanoasis/vim-devicons' " devicons
  Plug 'christoomey/vim-tmux-navigator' " Easier VIM <=> Tmux movements
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'pbogut/fzf-mru.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'neomake/neomake'
  Plug 'mhinz/vim-startify'

  " Completion / Syntax Highlighting
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
  Plug 'hardcoreplayers/spaceline.vim'
  Plug 'markwu/vim-mrufiles'
  Plug 'yuezk/vim-js'
  Plug 'HerringtonDarkholme/yats.vim'
  " or Plug 'leafgarland/typescript-vim'
  Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

" NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" FZF
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
command! -nargs=0 Prettier :CocCommand prettier.formatFile

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" GitGutter
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'

set statusline+=%{coc#status()}

call neomake#configure#automake('w')
let g:spaceline_seperate_style= 'curve'
