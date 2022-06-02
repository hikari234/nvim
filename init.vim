""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                            Vim-Plug
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
call plug#begin('~/.vim/plugged')
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                        BASIC CONFIGURATION ::
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
" numbers
" set number  		relativenumber

"
" set path+=**
set encoding=UTF-8
set mouse=ar

" case
" set smartcase 		ignorecase

" folder
" set foldenable  	foldmethod=marker 	foldmarker={{{,}}}

" Search
" set hlsearch        incsearch

" cancel swapfile
" set noswapfile

" brakets
set showmatch

" cursor setting
" set cursorline

" set so=7

" set ruler

" a more powerful backspace?
" set backspace=indent,eol,start

"" Tab and indentation
" Tab space 1 tab == 4 spaces
" use softtabstop=4 if you want to replace tab with space
" set expandtab       smarttab
" set shiftwidth=4    tabstop=4

" set autoindent      smartindent
" set cindent         cinoptions=g-1


""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                             Key Binding
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
let mapleader = ","

" 
" Normal Model
" 
" map - recursive
" noremap - non-recursive
noremap ;; $a;<ESC>
noremap <leader>h :noh<CR>
noremap <leader>s :vsplit<CR>
noremap <leader>t :tabe<CR>
noremap <leader>r :source $MYVIMRC<CR>

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
" set nobackup        nowritebackup   
" Show less in Pmenu
" set updatetime=100
" set shortmess+=

" let g:coc_global_extensions = [
"    \ 'coc-css',
"    \ 'coc-ccls',
"    \ 'coc-json',
"    \ 'coc-vimlsp',
"    \ 'coc-html',
"    \ ]

" inoremap <silent><expr> <c-W>o coc#refresh()


" ===
" === hikari status Line
" ===
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=%#CursorColumn#
set statusline+=\ %f
set statusline+=%m
set statusline+=%=
set statusline+=\ %y
set statusline+=\ [r:%-3l
set statusline+=\ c:%-2c]
set statusline+=\ %3p%%

""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                            End
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++

