set nocompatible
" always show status line
set laststatus=2
" relative line numbers
set relativenumber
" line number
set number
" fix backspace
set bs=2
" autowrite on exit, edit and stuff
set autowriteall
" map leader to ,
let mapleader = ","
" system clipboard
set clipboard=unnamed
" use mouse sometimes
set mouse=a
" utf-8 support
set encoding=utf-8
syntax on
filetype plugin indent on
set t_Co=256
set background=dark

function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.vim/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
      execute 'source' config_file
    endif
  endfor
endfunction

" set the runtime path to include vundle and initialise
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
call s:SourceConfigFilesIn('plugins')
call vundle#end()

call s:SourceConfigFilesIn('configs')
