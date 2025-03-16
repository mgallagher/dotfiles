set mouse=a

set termguicolors
set number
set path+=**
set scrolloff=5
set updatetime=500
set nowrap " No line wrapping

" Look into ftplugins for language-specific settings
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set wildmenu
set wildignore=*.o,*~,*.pyc

set splitbelow
set splitright
set noequalalways " Don't reset window sizes after closing
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
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'arithran/vim-delete-hidden-buffers'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-unimpaired'
Plug 'junegunn/limelight.vim'
call plug#end()

let g:deoplete#enable_at_startup = 1

" Linter config
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8'],
\}
let g:ale_python_flake8_options = '--max-line-length=99'

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

let g:gitgutter_sign_added = '█'
let g:gitgutter_sign_modified = '█'
let g:gitgutter_sign_removed = '█'

" Airline config
let g:airline_theme='oceanicnext'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#format = 1 " Only show the end of the branch, split on '/'
let g:airline#extensions#branch#displayed_head_limit = 25 " Truncate long branch names
let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'c' ],
  \ [ 'x', 'z', 'error', 'warning' ]
  \ ]

"*****************************************************************************
"" Key mappings
"*****************************************************************************
" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Get rid of any highlighting when escape is pressed
noremap <silent><esc> <esc>:noh<CR><esc>

" fzf.vim mappings
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :GFiles<CR>
nnoremap <leader>t :Tags<CR>

"*****************************************************************************
"" Sensible Vim (https://github.com/tpope/vim-sensible)
"*****************************************************************************
if filereadable(expand("~/.config/nvim/sensible.vim"))
  source ~/.config/nvim/sensible.vim
endif

if !has('gui_running')
  map "in Insert mode, type Ctrl+v Alt+n here" <A-n>
endif

