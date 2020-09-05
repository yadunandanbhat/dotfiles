syntax on
set smartindent
set nu
set smartcase
set noswapfile
set incsearch
set encoding=UTF-8

let g:gruvbox_contrast_light='hard'
let g:indentLine_char = '¦'

call plug#begin('~/.vim/plugged')
Plug 'preservim/NERDTree'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
call plug#end()

colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1

map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
