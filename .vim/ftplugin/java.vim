setlocal shiftwidth=4
setlocal tabstop=4
setlocal smarttab
setlocal smartindent
setlocal autoindent

inoremap { {<CR><BS>}<Esc>ko
:inoremap ( ()<Esc>i
noremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap " ""<Esc>i
" inoremap [ []<Esc>i
