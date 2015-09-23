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

let mapleader = " "
map <Leader>j :cnext <CR>
map <Leader>k :cprev <CR>

augroup Tweaks
	au SwapExists ~/* :let v:swapchoice='R'
augroup END

function Gofmt ()
	:cexpr []
	:cexpr system("gofmt " . expand('%') . " 1> /dev/null")
endfunction

augroup Golang
	au!

	au InsertLeave *.go silent call Gofmt()
	au BufWritePost,FileWritePost *_test.go !go test
augroup END
