
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'haishanh/night-owl.vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'christoomey/vim-tmux-navigator'

" JS Next Syntax
Plug 'othree/yajs.vim'

Plug 'lervag/vimtex'
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/artify.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'macthecadillac/lightline-gitdiff'
Plug 'maximbaz/lightline-ale'
Plug 'albertomontesg/lightline-asyncrun'

call plug#end()

if has('termguicolors')
	set termguicolors
endif

set number
set mouse:a

set shiftwidth=2
set softtabstop=2
set expandtab

syntax enable
colorscheme night-owl

let g:lightline = {'colorscheme': 'nightowl'}


