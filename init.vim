set number

set termguicolors
set path+=**
set scrolloff=5
set updatetime=500
set nowrap "Not a fan of line wrapping

" Look into ftplugins for language-specific settings
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set wildmenu
set wildignore=*.o,*~,*.pyc

"*****************************************************************************
"" Plug install packages
"*****************************************************************************
call plug#begin(expand('~/.config/nvim/plugged'))
Plug 'airblade/vim-gitgutter'
Plug 'mhartington/oceanic-next'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme OceanicNext 

let g:gitgutter_sign_added = '█'
let g:gitgutter_sign_modified = '█'
let g:gitgutter_sign_removed = '█'

let g:airline_theme='oceanicnext'

"*****************************************************************************
"" Sensible Vim (https://github.com/tpope/vim-sensible)
"*****************************************************************************
if filereadable(expand("~/.config/nvim/sensible.vim"))
  source ~/.config/nvim/sensible.vim
endif

