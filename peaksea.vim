" Note: Please set the background option in your .vimrc and/or .gvimrc
"
"	It is much better *not* to set 'background' option inside
"	a colorscheme file.  because ":set background" improperly
"	may cause colorscheme be sourced twice
"
" Color Scheme Overview: 
"	:ru syntax/hitest.vim
"
" Relevant Help: 
"	:h highlight-groups
"	:h psc-cterm-color-table
"
" Colors Order:
"	#rrggbb
"

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "peaksea"

  " DARK COLOR DEFINE START

  hi Normal		guifg=#d0d0d0	guibg=#202020	gui=NONE
  hi Comment		guifg=#d0d090	guibg=NONE	gui=NONE
  hi Constant		guifg=#80c0e0	guibg=NONE	gui=NONE
  hi Number		guifg=#e0c060	guibg=NONE	gui=NONE
  hi Identifier		guifg=#f0c0f0	guibg=NONE	gui=NONE
  hi Statement		guifg=#c0d8f8	guibg=NONE	gui=NONE
  hi PreProc		guifg=#60f080	guibg=NONE	gui=NONE
  hi Type		guifg=#b0d0f0	guibg=NONE	gui=NONE
  hi Special		guifg=#e0c060	guibg=NONE	gui=NONE
  hi Error		guifg=#f08060	guibg=NONE	gui=NONE
  hi Todo		guifg=#800000	guibg=#d0d090	gui=NONE
  hi Search		guifg=White	guibg=DarkRed	gui=NONE
  hi Visual		guifg=#000000	guibg=#a6caf0	gui=NONE
  hi Cursor		guifg=#000000	guibg=#00f000	gui=NONE
  " NOTE THIS IS IN THE COOL SECTION
  " hi CursorIM		guifg=#000000	guibg=#f000f0	gui=NONE
  hi StatusLine		guifg=#000000	guibg=#a6caf0	gui=NONE
  hi LineNr		guifg=#b0b0b0	guibg=NONE	gui=NONE
  hi Question		guifg=#000000	guibg=#d0d090	gui=NONE
  hi ModeMsg		guifg=fg	guibg=#000080	gui=NONE
  hi VisualNOS		guifg=fg	guibg=#000080	gui=NONE
  hi SpecialKey		guifg=#b0d0f0	guibg=NONE	gui=NONE
  hi NonText		guifg=#6080f0	guibg=#101010	gui=NONE
  hi Directory		guifg=#80c0e0	guibg=NONE	gui=NONE
  hi ErrorMsg		guifg=#d0d090	guibg=#800000	gui=NONE
  hi MoreMsg		guifg=#c0e080	guibg=NONE	gui=NONE
  hi Title		guifg=#f0c0f0	guibg=NONE	gui=NONE
  hi WarningMsg		guifg=#f08060	guibg=NONE	gui=NONE
  hi WildMenu		guifg=#000000	guibg=#d0d090	gui=NONE
  hi Folded		guifg=#aaaaaa	guibg=#333333	gui=NONE
  hi FoldColumn		guifg=#202020	guibg=NONE	gui=NONE
  hi DiffAdd		guifg=NONE	guibg=#000080	gui=NONE
  hi DiffChange		guifg=NONE	guibg=#800080	gui=NONE
  hi DiffDelete		guifg=#6080f0	guibg=#202020	gui=NONE
  hi DiffText		guifg=#000000	guibg=#c0e080	gui=NONE
  hi SignColumn		guifg=#e0e0e0	guibg=#202020	gui=NONE
  hi IncSearch		guifg=White	guibg=DarkRed	gui=NONE
  hi StatusLineNC	guifg=#000000	guibg=#c0c0c0	gui=NONE
  hi VertSplit		guifg=#000000	guibg=#c0c0c0	gui=NONE
  hi Underlined		guifg=#80a0ff	guibg=NONE	gui=underline 
  hi Ignore		guifg=#000000	guibg=NONE
  " NOTE THIS IS IN THE COOL SECTION
  if v:version >= 700
    if has('spell')
    " the guisp= could only support in Vim 7
      hi SpellBad	guifg=NONE	guibg=NONE	guisp=#f08060
      hi SpellCap	guifg=NONE	guibg=NONE	guisp=#6080f0
      hi SpellRare	guifg=NONE	guibg=NONE	guisp=#f0c0f0
      hi SpellLocal	guifg=NONE	guibg=NONE	guisp=#c0d8f8
    endif

    hi Pmenu          guifg=#dddddd     guibg=#444444     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
    hi PmenuSel       guifg=#000000     guibg=#ffffff     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=NONE
    
    hi TabLine		guifg=fg	guibg=#008000	gui=NONE
    hi TabLineFill	guifg=fg	guibg=#008000	gui=NONE
    hi TabLineSel	guifg=fg	guibg=NONE	gui=NONE
    hi CursorColumn	guifg=NONE	guibg=#800000	gui=NONE
    hi CursorLine	guifg=NONE	guibg=NONE	gui=underline
    hi MatchParen	guifg=NONE	guibg=#800080
  endif

  " DARK COLOR DEFINE END

  " Vim 7 added stuffs
  if v:version >= 700
    hi Ignore	gui=NONE  

    " the gui=undercurl could only support in Vim 7
    if has('spell')
      hi SpellBad	gui=undercurl  
      hi SpellCap	gui=undercurl  
      hi SpellRare	gui=undercurl  
      hi SpellLocal	gui=undercurl 
    endif
    hi TabLine		gui=underline  
    hi TabLineFill	gui=underline  
    hi Underlined	gui=underline  
    hi CursorLine	gui=underline 
  endif

  " gui define for background=dark end here

  if &t_Co==8 || &t_Co==16
    " for 8-color and 16-color term
    hi Normal		ctermfg=LightGrey   ctermbg=Black
    hi Special		ctermfg=Yellow	    ctermbg=bg
    hi Comment		ctermfg=DarkYellow  ctermbg=bg
    hi Constant		ctermfg=Blue	    ctermbg=bg
    hi Number		ctermfg=Yellow	    ctermbg=bg
    hi LineNr		ctermfg=DarkGrey    ctermbg=bg
    hi PreProc		ctermfg=Green	    ctermbg=bg
    hi Statement	ctermfg=Cyan	    ctermbg=bg
    hi Type		ctermfg=Cyan	    ctermbg=bg
    hi Error		ctermfg=Red	    ctermbg=bg
    hi Identifier	ctermfg=Magenta     ctermbg=bg
    hi SpecialKey	ctermfg=Cyan	    ctermbg=bg
    hi NonText		ctermfg=Blue	    ctermbg=bg
    hi Directory	ctermfg=Blue	    ctermbg=bg
    hi MoreMsg		ctermfg=Green	    ctermbg=bg
    hi Title		ctermfg=Magenta     ctermbg=bg
    hi WarningMsg	ctermfg=Red	    ctermbg=bg
    hi DiffDelete	ctermfg=Blue	    ctermbg=bg

    hi Search		ctermfg=NONE	    ctermbg=DarkRed
    hi Visual		ctermfg=Black	    ctermbg=DarkCyan
    hi Cursor		ctermfg=Black	    ctermbg=Green
    hi StatusLine	ctermfg=Black	    ctermbg=DarkCyan
    hi Question		ctermfg=Black	    ctermbg=DarkYellow
    hi Todo		ctermfg=DarkRed     ctermbg=DarkYellow
    hi Folded		ctermfg=DarkGrey    ctermbg=DarkGrey
    hi FoldColumn	ctermfg=DarkGrey    ctermbg=NONE
    hi ModeMsg		ctermfg=Grey	    ctermbg=DarkBlue
    hi VisualNOS	ctermfg=Grey	    ctermbg=DarkBlue
    hi ErrorMsg		ctermfg=DarkYellow  ctermbg=DarkRed
    hi WildMenu		ctermfg=Black	    ctermbg=DarkYellow
    hi SignColumn	ctermfg=White	    ctermbg=DarkGreen
    hi DiffText		ctermfg=Black	    ctermbg=DarkYellow

    if v:version >= 700
      if has('spell')
        hi SpellBad	ctermfg=NONE	ctermbg=DarkRed
        hi SpellCap	ctermfg=NONE	ctermbg=DarkBlue
        hi SpellRare	ctermfg=NONE	ctermbg=DarkMagenta
        hi SpellLocal	ctermfg=NONE	ctermbg=DarkGreen
      endif

      hi Pmenu		ctermfg=White	ctermbg=DarkGrey
      hi PmenuSel	ctermfg=Black	ctermbg=White

      hi TabLine	ctermfg=fg	ctermbg=Black   	cterm=underline
      hi TabLineFill	ctermfg=fg	ctermbg=Black   	cterm=underline
      hi CursorColumn	ctermfg=NONE	ctermbg=DarkRed

      hi TabLineSel	ctermfg=fg	ctermbg=bg
      hi CursorLine	ctermfg=NONE	ctermbg=bg		cterm=underline

      hi MatchParen	ctermfg=NONE	ctermbg=DarkMagenta
    endif
    if &t_Co==8
      " 8 colour terminal support, this assumes 16 colour is available through
      " setting the 'bold' attribute, will get bright foreground colour.
      " However, the bright background color is not available for 8-color terms.
      "
      " You can manually set t_Co=16 in your .vimrc to see if your terminal
      " supports 16 colours, 
      hi DiffText	cterm=none  
      hi Visual		cterm=none  
      hi Cursor		cterm=none  
      hi Comment	cterm=none  
      hi Todo		cterm=none  
      hi StatusLine	cterm=none  
      hi Question	cterm=none  
      hi DiffChange	cterm=none  
      hi ModeMsg	cterm=none  
      hi VisualNOS	cterm=none  
      hi ErrorMsg	cterm=none  
      hi WildMenu	cterm=none  
      hi DiffAdd	cterm=none  
      hi Folded		cterm=none  
      hi DiffDelete	cterm=none  
      hi Normal		cterm=none  
      hi PmenuThumb	cterm=none 
      hi Search		cterm=bold  
      hi Special	cterm=bold  
      hi Constant	cterm=bold  
      hi Number		cterm=bold  
      hi LineNr		cterm=bold  
      hi PreProc	cterm=bold  
      hi Statement	cterm=bold  
      hi Type		cterm=bold  
      hi Error		cterm=bold  
      hi Identifier	cterm=bold  
      hi SpecialKey	cterm=bold  
      hi NonText	cterm=bold  
      hi MoreMsg	cterm=bold  
      hi Title		cterm=bold  
      hi WarningMsg	cterm=bold  
      hi FoldColumn	cterm=bold  
      hi SignColumn	cterm=bold  
      hi Directory	cterm=bold  
      hi DiffDelete	cterm=bold 
    else
      " Background > 7 is only available with 16 or more colors

      hi WarningMsg	cterm=none  
      hi Search		cterm=none  
      hi Visual		cterm=none  
      hi Cursor		cterm=none  
      hi Special	cterm=none  
      hi Comment	cterm=none  
      hi Constant	cterm=none  
      hi Number		cterm=none  
      hi LineNr		cterm=none  
      hi PreProc	cterm=none  
      hi Todo		cterm=none  
      hi Error		cterm=none  
      hi Identifier	cterm=none  
      hi Folded		cterm=none  
      hi SpecialKey	cterm=none  
      hi Directory	cterm=none  
      hi ErrorMsg	cterm=none  
      hi Normal		cterm=none  
      hi PmenuThumb	cterm=none 
      hi WildMenu	cterm=none  
      hi FoldColumn	cterm=none  
      hi SignColumn	cterm=none  
      hi DiffAdd	cterm=none  
      hi DiffChange	cterm=none  
      hi Question	cterm=none  
      hi StatusLine	cterm=none  
      hi DiffText	cterm=none 
      hi IncSearch	cterm=reverse  
      hi StatusLineNC	cterm=reverse  
      hi VertSplit	cterm=reverse 

      " Well, well, bold font with color 0-7 is not possible.
      " So, the Question, StatusLine, DiffText cannot act as expected.

      hi Statement	cterm=none  
      hi Type		cterm=none  
      hi MoreMsg	cterm=none  
      hi ModeMsg	cterm=none  
      hi NonText	cterm=none  
      hi Title		cterm=none  
      hi VisualNOS	cterm=none  
      hi DiffDelete	cterm=none  
      hi TabLineSel	cterm=none 

    endif
  elseif &t_Co==256
    " 256color dark terminal support here
    " Comment/Uncomment the following line to disable/enable transparency
    hi Normal		ctermfg=252	ctermbg=NONE	cterm=NONE
    hi Comment		ctermfg=186	ctermbg=NONE	cterm=NONE
    hi Constant		ctermfg=110	ctermbg=NONE	cterm=NONE
    hi Number		ctermfg=179	ctermbg=NONE	cterm=NONE
    hi Identifier	ctermfg=219	ctermbg=NONE	cterm=NONE
    hi Statement	ctermfg=153	ctermbg=NONE	cterm=NONE
    hi PreProc		ctermfg=84	ctermbg=NONE	cterm=NONE
    hi Type		ctermfg=153	ctermbg=NONE	cterm=NONE
    hi Special		ctermfg=179	ctermbg=NONE	cterm=NONE
    hi Error		ctermfg=209	ctermbg=NONE	cterm=NONE
    hi Todo		ctermfg=88	ctermbg=186	cterm=NONE
    hi Search		ctermfg=White	ctermbg=DarkRed	cterm=NONE
    hi Visual		ctermfg=16	ctermbg=153	cterm=NONE
    hi Cursor		ctermfg=16	ctermbg=46	cterm=NONE
    " NOTE THIS IS IN THE COOL SECTION
    hi CursorIM        	ctermfg=16	ctermbg=201	cterm=NONE
    hi StatusLine	ctermfg=16	ctermbg=153	cterm=NONE
    hi LineNr		ctermfg=249	ctermbg=NONE	cterm=NONE
    hi Question		ctermfg=16	ctermbg=186	cterm=NONE
    hi ModeMsg		ctermfg=fg	ctermbg=18	cterm=NONE
    hi VisualNOS	ctermfg=fg	ctermbg=18	cterm=NONE
    hi SpecialKey	ctermfg=153	ctermbg=NONE	cterm=NONE
    hi NonText		ctermfg=69	ctermbg=233	cterm=NONE
    " Comment/Uncomment the following line to disable/enable transparency
    hi NonText		ctermfg=69	ctermbg=NONE	cterm=NONE
    hi Directory	ctermfg=110	ctermbg=NONE	cterm=NONE
    hi ErrorMsg		ctermfg=186	ctermbg=88	cterm=NONE
    hi MoreMsg		ctermfg=150	ctermbg=NONE	cterm=NONE
    hi Title		ctermfg=219	ctermbg=NONE	cterm=NONE
    hi WarningMsg	ctermfg=209	ctermbg=NONE	cterm=NONE
    hi WildMenu		ctermfg=16	ctermbg=186	cterm=NONE
    hi Folded		ctermfg=NONE	ctermbg=DarkGrey cterm=NONE
    hi FoldColumn	ctermfg=DarkGrey ctermbg=NONE cterm=NONE
    hi DiffAdd		ctermfg=NONE	ctermbg=18	cterm=NONE
    hi DiffChange	ctermfg=NONE	ctermbg=90	cterm=NONE
    hi DiffDelete	ctermfg=69	ctermbg=234	cterm=NONE
    hi DiffText		ctermfg=16	ctermbg=150	cterm=NONE
    hi SignColumn	ctermfg=254	ctermbg=28	cterm=NONE
    hi IncSearch	ctermfg=White	ctermbg=DarkRed	cterm=NONE
    hi StatusLineNC	ctermfg=16	ctermbg=250	cterm=NONE
    hi VertSplit	ctermfg=16	ctermbg=250	cterm=NONE
    hi Underlined	ctermfg=111	ctermbg=NONE	cterm=underline 
    hi Ignore		ctermfg=16	ctermbg=NONE
    " NOTE THIS IS IN THE COOL SECTION
    if v:version >= 700
      if has('spell')
        " the ctermsp= is not supported in Vim 7 we simply ignored
        if 0
          hi SpellBad	cterm=undercurl	ctermbg=NONE	ctermfg=209
          hi SpellCap	cterm=undercurl	ctermbg=NONE	ctermfg=69
          hi SpellRare	cterm=undercurl	ctermbg=NONE	ctermfg=219
          hi SpellLocal	cterm=undercurl	ctermbg=NONE	ctermfg=153
        else
          hi SpellBad	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
          hi SpellCap	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
          hi SpellRare	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
          hi SpellLocal	cterm=undercurl	ctermbg=NONE	ctermfg=NONE
        endif
      endif

      hi Pmenu		ctermfg=White	ctermbg=DarkGrey
      hi PmenuSel	ctermfg=Black	ctermbg=White	cterm=NONE

      hi TabLine	ctermfg=fg	ctermbg=Black	cterm=NONE
      hi TabLineFill	ctermfg=fg	ctermbg=Black	cterm=NONE
      hi TabLineSel	ctermfg=fg	ctermbg=NONE	cterm=NONE

      hi CursorColumn	ctermfg=NONE	ctermbg=88	cterm=NONE
      hi CursorLine	ctermfg=NONE	ctermbg=NONE	cterm=underline
      hi MatchParen	ctermfg=NONE	ctermbg=90
      hi TabLine	cterm=underline  
      hi TabLineFill	cterm=underline  
      hi Underlined	cterm=underline  
      hi CursorLine	cterm=underline 
    endif

  endif " t_Co

  " }}}2

" Links:
"
" COLOR LINKS DEFINE START

hi link		String		Constant
" Character must be different from strings because in many languages
" (especially C, C++) a 'char' variable is scalar while 'string' is pointer,
" mistaken a 'char' for a 'string' will cause disaster!
hi link		Character	Number
hi link		SpecialChar	LineNr
hi link		Tag		Identifier
hi link		cCppOut		LineNr
" The following are not standard hi links, 
" these are used by DrChip
hi link		Warning		MoreMsg
hi link		Notice		Constant
" these are used by Calendar
hi link		CalToday	PreProc
" these are used by TagList
hi link		MyTagListTagName	IncSearch
hi link		MyTagListTagScope	Constant

hi TabLineFill guifg=#9098a0 guibg=#111111
hi TabLine guifg=black guibg=#888888
hi TabLineSel guifg=white guibg=#202020 gui=bold

" COLOR LINKS DEFINE END

" vim:et:nosta:sw=2:ts=8:
" vim600:fdm=marker:fdl=1:
