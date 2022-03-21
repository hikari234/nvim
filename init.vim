""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                            Vim-Plug
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
call plug#begin('~/.vim/plugged')

	" === Language support protocal
	Plug 'fatih/vim-go'	
	Plug 'rust-lang/rust.vim'
	
	" === Tools for coding
	Plug 'scrooloose/nerdtree'
	" Plug 'tpope/vim-fugitive'			            	" fugitive
    Plug 'tpope/vim-surround'
    Plug 'gcmt/wildfire.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'junegunn/goyo.vim'

    " === Web dev
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    
    Plug 'w0rp/ale'						                " ale 
	Plug 'neoclide/coc.nvim', {'branch': 'release'}		" coc.vim
	" Plug 'junegunn/fzf'					            " fuzzy file finder	
	" Plug 'honza/vim-snippets'
	Plug 'terryma/vim-multiple-cursors'

    " === Vim application
    Plug 'itchyny/calendar.vim'

    " === Status Bar
    Plug 'itchyny/lightline.vim'
    Plug 'ojroques/vim-scrollstatus'

call plug#end()

""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                        BASIC CONFIGURATION ::
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
" numbers
set number  		relativenumber

"
set wildmenu
set path+=**
set encoding=UTF-8
set mouse=ar

" case
set smartcase 		ignorecase

" folder
" set foldenable  	foldmethod=marker 	foldmarker={{{,}}}

" Search
set hlsearch        incsearch

" cancel swapfile
set noswapfile

" brakets
set showmatch

" cursor setting
set cursorline

set so=7

set ruler

" a more powerful backspace?
" set backspace=indent,eol,start

"" Tab and indentation
" Tab space 1 tab == 4 spaces
" use softtabstop=4 if you want to replace tab with space
set expandtab       smarttab
set shiftwidth=4    tabstop=4

set autoindent      smartindent
set cindent         cinoptions=g-1

" MY vim runtime path(Mac) : $VIMRUNTIME=/usr/share/vim/vim82

source ~/.config/nvim/plugin.vim
source ~/.config/nvim/peaksea.vim

try
	set undodir=~/.config/nvim/undodir undofile
catch
endtry


""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                             Key Binding
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
let mapleader = ","

" 
" Normal Model
" 
" map - recursive
" noremap - non-recursive
noremap Q :q<CR>
noremap W :w<CR>
noremap ;; $a;<ESC>
noremap R :source $MYVIMRC<CR>
noremap <leader>h :noh<CR>
noremap <leader>s :vsplit<CR>
noremap <leader>o o<ESC>
noremap <leader>t :tabe<CR>

noremap H 5h
noremap J 5j
noremap K 5k
noremap L 5l


" 
" Insert Model
"
inoremap jk <Esc>


""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                     Plugin setting details
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"===
"=== coc.nvim
"===
" No backup setting
set nobackup        nowritebackup   
" Show less in Pmenu
set updatetime=100
set shortmess+=

let g:coc_global_extensions = [
    \ 'coc-css',
    \ 'coc-ccls',
    \ 'coc-json',
    \ 'coc-vimlsp',
    \ 'coc-html',
    \ ]

inoremap <silent><expr> <c-W>o coc#refresh()

"===
"=== NERDTree
"===
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
map <leader>n :NERDTreeToggle<CR>
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"===
"=== lightline
"===
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'active': {
  \   'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding', 'filetype', 'charvaluehex']]
  \ },
  \ 'component_function': {'percent': 'ScrollStatus'},
  \ }

" ===
" === Goyo
" ===
nnoremap <LEADER>g :Goyo<CR>


""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                            End
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++

