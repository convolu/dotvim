call pathogen#infect()
call pathogen#helptags()


" Keep the same indent as the line I'm currently on
set autoindent

set ruler

" Always display status bar
set laststatus=2

" Display line numbers
set number

" Jump to matching brace when one is inserted
set showmatch
set matchtime=5

" Set indentation to 4 spaces
set shiftwidth=4
set softtabstop=4
set expandtab

" Show whitespace characters
set listchars=eol:$,trail:~
set list

" Specify which characters are to be matched as pairs
set matchpairs=(:),{:},[:],<:>

" Show info about current command
set showcmd


" Enable syntax highlighting
syntax on
" Try to detect filetypes
filetype on

" Try loading indent file for filetype
filetype plugin indent on

" Set the location of the clang library for Mac so that the autocomplete tool
" works
let s:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib'
if isdirectory(s:clang_library_path)
    let g:clang_library_path=s:clang_library_path
endif

" Make it look nicer
set background=dark
try
    colorscheme solarized
catch
    colorscheme desert
endtry
