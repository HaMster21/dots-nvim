syntax on
set number
set autoindent
set encoding=utf-8
set laststatus=2
set nowrap
set showmatch
set ts=4
set sw=0
set scrolloff=5
set incsearch
set autoindent

set autoread
set ruler

set colorcolumn=80
hi ColorColumn ctermbg=DarkRed

set list
highlight NonText ctermfg=DarkBlue
highlight SpecialKey ctermfg=DarkBlue
set listchars=tab:▸\ ,eol:¬

" Go Coding
au BufWritePre *.go :%!gofmt
au BufWritePost *_test.go :!go test
