syntax on
set number
set relativenumber
set autoindent
set smartindent
set encoding=utf-8
set laststatus=2
set nowrap
set showmatch
set ts=4
set sw=4
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
map <Leader>l :tabn <CR>
map <Leader>h :tabp <CR>

augroup Tweaks
	au SwapExists ~/* :let v:swapchoice='R'
augroup END

set rtp +=$GOROOT/misc/vim

