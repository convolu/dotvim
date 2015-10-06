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
set listchars=trail:~
set list

" Specify which characters are to be matched as pairs
set matchpairs=(:),{:},[:],<:>

" Show info about current command
set showcmd

" Enable mouse scrolling where
" set mouse=nicr

" Enable mouse support (hold option to revert to old behaviour)
set mouse=a

" Highlight 80 char limit
set colorcolumn=80

" Add visual menu for command autocomplete
set wildmenu

" Highlightcurrent line
set cursorline

" Close delete buffers once we are close the tab that includes them
set nohidden

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

" Add JSHint as ajs cckecker for syntastic
let g:syntastic_javascript_checkers = ['jshint']

" Automatically set json files to correct file type
au BufNewFile,BufRead *.json set filetype=json


" Make it look nicer
set background=dark
try
    colorscheme solarized
catch
    colorscheme desert
endtry
