"""  _____________________
""" < hiakri's nvim Config >
"""  ---------------------
"""         \   ^__^
"""          \  (oo)\_______
"""             (__)\       )\/\
"""                 ||----w |
"""                 ||     ||
""" 
""" 
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                            Vim-Plug
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
call plug#begin('~/.config/nvim/plugged')
	" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                        BASIC CONFIGURATION ::
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
set encoding=UTF-8
set mouse=ar
syntax on

" brakets
set showmatch

let mapleader = ","

" Normal Model
" map - recursive
" noremap - non-recursive
noremap ; :
noremap C :call Compile()<CR>
noremap <leader>h :noh<CR>
noremap <leader>s :vsplit<CR>
noremap <leader>t :term<CR>
noremap <leader>r :source $MYVIMRC<CR>

" System clipboard
noremap <leader>y "+y
noremap <leader>p "+p
noremap <leader>P "+P

" Insert Model
inoremap jk <Esc>

" Visual Model

" Terminal Model
"
" % is file name
" < to cut extension name
func! Compile()

	" wirte, then split space
	" on the right side
	exec "w"
	set splitright
	:vsp

	if &filetype == 'c'
		term gcc % -o %< && ./%<
	elseif &filetype == 'cpp'
		term g++ -std=c++11 % -Wall -o %< && ./%<
	elseif &filetype == 'rust'
		term rustc % && ./%<
	elseif &filetype == 'python'
		term python3 %
	endif
endfunc


""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                      hikari color scheme
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++

" statusline
hi link git		Question
hi link path	 	Title
hi link filename	LineNr
hi link cursor_pos	Directory

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
set statusline+=\"%f\"
set statusline+=%m
set statusline+=%=
set statusline+=%#filename#
set statusline+=\ %y
set statusline+=%#cursor_pos#
set statusline+=\ [Row:%3l/%L
set statusline+=\ Col:%-2c]
" set statusline+=\ %3p%%]

" transparency
hi Normal		ctermfg=252	ctermbg=NONE

" Pmenu
hi! link Comment	Directory
hi! link Identifier	Type
hi! link Pmenu		Visual
hi! link PmenuSel	Search

""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                     Plugin setting details
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++

""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""                            End
""" +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++ +++++++++++
"""
"""	              *     ,MMM8&&&.            *
"""	                   MMMM88&&&&&    .
"""	                  MMMM88&&&&&&&
"""	      *           MMM88&&&&&&&&
"""	                  MMM88&&&&&&&&
"""	                  'MMM88&&&&&&'
"""	                    'MMM8&&&'      *
"""	           |\___/|
"""	           )     (             .              '
"""	          =\     /=
"""	            )   (       *
"""	           /     \
"""	           |     |
"""	          /       \
"""	          \       /
"""	   _/\_/\_/\__  _/_/\_/\_/\_/\_/\_/\_/\_/\_/\_
"""	   |  |  |  |( (  |  |  |  |  |  |  |  |  |  |
"""	   |  |  |  | ) ) |  |  |  |  |  |  |  |  |  |
"""	   |  |  |  |(_(  |  |  |  |  |  |  |  |  |  |
"""	   |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
"""	   |  |  |  |  |  |  |  |  |  |  |  |  |  |  |
