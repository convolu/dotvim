call pathogen#infect()
call pathogen#helptags()

" Keep the same indent as the line I'm currently on
set autoindent

set ruler

" Always display status bar
set laststatus=2

" Display line numbers
set number

" Set indentation to 4 spaces
set shiftwidth=4
set softtabstop=4
set expandtab 

" Show whitespace characters
set listchars=eol:$,trail:~
set list

" Enable syntax highlighting
syntax on
" Try to detect filetypes
filetype on

" Try loading indent file for filetype
filetype plugin indent on

