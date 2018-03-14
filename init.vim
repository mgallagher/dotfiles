set number

set termguicolors
set path+=**
set scrolloff=5
set updatetime=500

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
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-surround'
call plug#end()

colorscheme OceanicNext 

let g:gitgutter_sign_added = '█'
let g:gitgutter_sign_modified = '█'
let g:gitgutter_sign_removed = '█'
"let g:gitgutter_diff_args = '--color-words'
"*****************************************************************************
"" Sensible Vim 
"*****************************************************************************
if filereadable(expand("~/.config/nvim/sensible.vim"))
  source ~/.config/nvim/sensible.vim
endif

