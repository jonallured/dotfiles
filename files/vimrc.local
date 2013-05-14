color railscasts
set t_Co=256
set number
set splitbelow
set splitright
set smartcase
set undodir=~/.undo

set cursorline
highlight CursorLine cterm=NONE ctermbg=234 ctermfg=NONE

if exists("$TMUX")
  let &t_SI = "\<Esc>[3 q"
  let &t_EI = "\<Esc>[0 q"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

au BufRead,BufNewFile *.md setlocal textwidth=80
