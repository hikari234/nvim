""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                            Vim-Plug
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
call plug#begin('~/.vim/plugged')
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                        BASIC CONFIGURATION ::
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
set encoding=UTF-8
set mouse=ar
syntax on

" brakets
set showmatch

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
hi link git		Question
hi link path	 	Title
hi link filename	LineNr
hi link cursor_pos	Directory

" Pmenu
hi! link Comment	Directory
hi! link Identifier	Type
hi! link Pmenu		Visual
hi! link PmenuSel	Search

""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                      hikari status Line
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0 ? '['.l:branchname.'] ' : ''
endfunction


" color seen in :highlight
set statusline=
set statusline+=%#git#
set statusline+=%{StatuslineGit()}
set statusline+=%#path#
set statusline+=\[%f]
set statusline+=%m
set statusline+=%=
set statusline+=%#filename#
set statusline+=\ %y
set statusline+=%#cursor_pos#
set statusline+=\ [r:%-3l
set statusline+=\ c:%-2c
set statusline+=\ %3p%%]

""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                            End
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
