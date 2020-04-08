
call plug#begin('~/.vim/plugged')

" coc does all the things with language servers
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'haishanh/night-owl.vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'christoomey/vim-tmux-navigator'

" vim polyglot, a big language package
Plug 'sheerun/vim-polyglot'

" Git stuff
Plug 'airblade/vim-gitgutter'

" Visual stuff
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

" Show whitespace
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
set list

" VSCode style Alt+j/k key mappings for moving rows up and down
" Normal mode
nnoremap <M-j> :m .+1<CR>==
nnoremap <M-k> :m .-2<CR>==

" Insert mode
inoremap <M-j> <ESC>:m .+1<CR>==gi
inoremap <M-k> <ESC>:m .-2<CR>==gi

" Visual mode
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv

syntax enable
colorscheme night-owl

let g:lightline = {'colorscheme': 'nightowl'}
let NERDTreeShowHidden=1

