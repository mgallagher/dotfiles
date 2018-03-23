set mouse=a

set termguicolors
set number
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
Plug 'jremmen/vim-ripgrep'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
" Plug 'pangloss/vim-javascript'
" Plug 'othree/yajs.vim'
call plug#end()

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext 

let g:gitgutter_sign_added = '█'
let g:gitgutter_sign_modified = '█'
let g:gitgutter_sign_removed = '█'

let g:airline_theme='oceanicnext'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"*****************************************************************************
"" Key mappings
"*****************************************************************************
" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

noremap <silent><esc> <esc>:noh<CR><esc>

"*****************************************************************************
"" Sensible Vim (https://github.com/tpope/vim-sensible)
"*****************************************************************************
if filereadable(expand("~/.config/nvim/sensible.vim"))
  source ~/.config/nvim/sensible.vim
endif

