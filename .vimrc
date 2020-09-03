syntax on
set smartindent
set nu
set smartcase
set noswapfile
set incsearch
set encoding=UTF-8

let g:onedark_terminal_italicis = 1
let g:gruvbox_contrast_light='hard'

call plug#begin('~/.vim/plugged')
Plug 'preservim/NERDTree'
Plug 'ycm-core/YouCompleteMe'
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'KeitaNakamura/neodark.vim'
Plug 'joshdick/onedark.vim'
call plug#end()

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1

map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
