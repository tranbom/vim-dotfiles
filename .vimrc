
set term=xterm-256color
set tabstop=4
set softtabstop=4
set expandtab
set nowrap
set showcmd
set showmode
set showmatch
set history=1000
set hlsearch
set incsearch

noremap ö l
noremap l k
noremap k j
noremap j h
inoremap hh <esc>

set nu

syntax on

set shiftwidth=4
filetype indent on
set autoindent

autocmd BufRead,BufNewFile *.yaml set shiftwidth=2 tabstop=2 softtabstop=2 expandtab

" everforest colorscheme
if has('termguicolors')
  set termguicolors
endif

set background=dark
"let g:everforest_background = 'medium'
let g:everforest_better_performance=1
colorscheme everforest

" netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" rulers for python
set colorcolumn=72,79,88

autocmd FileType python
  \ :iabbrev <buffer> def defZ() -> :<CR>""" """<Esc>lFZxi

highlight ExtraWhitespace ctermbg=Yellow guibg=Yellow
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
