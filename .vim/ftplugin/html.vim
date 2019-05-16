packadd! matchit

setlocal tabstop=2
setlocal shiftwidth=2
setlocal smartindent

" update timestamps
" If buffer modified, update any 'Last modified: '
" Restores cursor and window position using save_cursor variable.
function! LastModified()
  if &modified
    let save_cursor = getpos(".")
    " let n = min([20, line("$")])
    let n = line("$")
    keepjumps exe '1,' . n . 's#^\(.\{,10}Last modified: \).*#\1' .
          \ strftime('%a %b %d, %Y  %I:%M%p') . '#e'
    call histdel('search', -1)
    call setpos('.', save_cursor)
  endif
endfun
autocmd BufWritePre * call LastModified()
