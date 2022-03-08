"show line numbers.
set number
set relativenumber

" configure editor with tabs and nice stuff...
set expandtab           " enter spaces when tab is pressed
"set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

" make backspaces more powerfull
set backspace=indent,eol,start

set ruler               " show line and column number
syntax on               " syntax highlighting
set showcmd             " show (partial) command in status line

set t_Co=256 
colorscheme simple-dark

set fileencodings=ucs-bom,utf-8,big5,gb18030,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set encoding=utf-8

set list
set listchars=tab:>-
