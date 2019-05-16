" add proper PEP8 indentation
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix

" enable folding
set foldmethod=indent
set foldlevel=99

" make your code look pretty
" TODO: does the following exist?
let python_highlight_all = 1

" flagging unnecessary whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /\s\+$/
