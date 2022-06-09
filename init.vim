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


let mapleader = ","

" Normal Model
" map - recursive
" noremap - non-recursive
noremap ; :
noremap <leader>h :noh<CR>
noremap <leader>s :vsplit<CR>
" noremap <leader>t :term<CR>
noremap <leader>r :source $MYVIMRC<CR>
noremap <leader>c :call Compile()<CR>

func! Compile()
	exec "w"
	if &filetype == 'c'
		set splitright
		:vsp
		term gcc % -o %< && time ./%<
	elseif &filetype == 'cpp'
		set splitright
		exec "!g++ -std=c++11 % -Wall -o %<"
		:vsp
		:term ./%<
	elseif &filetype == 'rust'
		set splitright
		:vsp
		term rustc % && ./%<
	endif
endfunc

" Insert Model
inoremap jk <Esc>

" Visual Model
" System clipboard
vnoremap Y "+y

" Terminal Model


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
