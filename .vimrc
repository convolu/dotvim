" ===== Core =====
set nocompatible    " This is vim. No ancient vi bug compatability.
set hidden           " Allow editing multiple unsaved buffers (duh)
set encoding=utf-8
scriptencoding utf-8
set wildmenu         " Add visual menu for command autocomplete

" ===== Spacing, Tabs, and Indenting =====
set expandtab           " Use spaces instead of tabs (work convinced me)
set tabstop=2           " Number of spaces <Tab> represents
set shiftwidth=2        " Number of spaces for autoindent (>>)
set autoindent          " Auto indents line relative to line above
set smartindent         " Indent next line intelligently
set smarttab            " Smarter tab and backspace insert behavior

" ===== Colors and Appearance =====
  syntax on               " Syntax Highlighting
  set background=dark     " Dark background
" set t_Co=256            " Terminal supports 256 colors
  set title               " Change the terminal title
  set number              " Show line numbering
  set ruler               " Show line stats at bottom
" set shm=atAI            " Shortmsg abbrs, ignore swapfiles, no intro
  set synmaxcol=200       " No highlight beyond col (bad *MLs!)
  set laststatus=2        " No status line!
  set cursorline          " Highlight the line the cursor is on

" Reload .vimrc when making changes
augroup reloadvimrc
  autocmd!
  autocmd BufWritePost .vimrc source %
augroup END

" Reload files if these change on disk
set autoread
" Reload files when changing buffers
augroup reloadfile
  " Remove all vimrc autocommands
  autocmd!
  autocmd FocusGained,BufEnter * :checktime
augroup END


" Jump to matching brace when one is inserted
set showmatch
set matchtime=5


" Show whitespace characters
set listchars=tab:⇥∙,trail:∙
set list

" Specify which characters are to be matched as pairs
set matchpairs+=<:>

" Show info about current command
set showcmd

" Enable mouse scrolling where
" set mouse=nicr

" Enable mouse support (hold option to revert to old behaviour)
set mouse=a


" Try loading indent file for filetype
filetype plugin indent on

" Automatically set json files to correct file type
augroup jsonfiletype
  autocmd!
  au BufNewFile,BufRead *.json set filetype=json
augroup END


colorscheme default

" Highlight 100 char limit
set colorcolumn=100
highlight ColorColumn ctermbg=darkgrey guibg=darkgrey
