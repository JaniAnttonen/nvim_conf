
call plug#begin('~/.vim/plugged')

" coc does all the things with language servers
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" File browser for vim
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Icons for different file types for nerdtree
Plug 'ryanoasis/vim-devicons'

" Hop between vim instances in different tmux panes
Plug 'christoomey/vim-tmux-navigator'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" vim polyglot, a big language package
Plug 'sheerun/vim-polyglot'

" Git stuff
Plug 'airblade/vim-gitgutter'

" Visual stuff
Plug 'haishanh/night-owl.vim'
Plug 'lervag/vimtex'
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/artify.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'macthecadillac/lightline-gitdiff'
Plug 'maximbaz/lightline-ale'
Plug 'albertomontesg/lightline-asyncrun'

call plug#end()

" Set true color mode
if has('termguicolors')
	set termguicolors
endif

" Show line numbers
set number

" Update opened files on change
set autoread

" Enable mouse use
set mouse:a

" Use 2 spaces for tabs
set shiftwidth=2
set softtabstop=2
set expandtab

" Show whitespace
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
set list

" Disable swap file
set noswapfile
set nobackup
set nowb

" coc stuff
set updatetime=300
set cmdheight=2
autocmd CursorHold * silent call CocActionAsync('highlight')

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Remap keys for gotos
"nmap <silent> gd :call CocAction('jumpDefinition', 'tab drop')<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" gh - get hint on whatever's under the cursor
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent> gh :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction<Paste>


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

" Fuzzy finder with fzf and grep
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

" Enable color syntax
syntax enable
colorscheme night-owl

" Use color scheme in the lightline
let g:lightline = {'colorscheme': 'nightowl'}

" Nerd tree settings
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
" Nerd tree toggle
nmap <silent> f :NERDTreeToggle<CR>

