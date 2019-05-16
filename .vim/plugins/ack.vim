" Integrate ack (grep replacement) into vim
Plugin 'mileszs/ack.vim'

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  " TODO: try
  " let g:ackprg = 'ag --nogroup --nocolor --column'
  let g:ackprg = 'ag --vimgrep'
endif

" do not jump to first result automatically
nnoremap <Leader>a :Ack!<Space>

" vim:ft=vim
