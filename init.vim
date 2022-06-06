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
hi hi_git 		ctermfg=121 gui=bold guifg=SeaGreen
hi hi_path 		ctermfg=225 gui=bold guifg=Magenta
hi hi_filename 		ctermfg=11 guifg=Yellow
hi hi_cursor_position 	ctermfg=159 guifg=Cyan

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
set statusline+=%#hi_git#
set statusline+=%{StatuslineGit()}
set statusline+=%#hi_path#
set statusline+=\%f
set statusline+=%m
set statusline+=%=
set statusline+=%#hi_filename#
set statusline+=\ %y
set statusline+=%#hi_cursor_position#
set statusline+=\ [r:%-3l
set statusline+=\ c:%-2c]
set statusline+=\ %3p%%

"===
"=== Some vim color config
"===
" Pmenu should be implemented here.

""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                            End
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++

