syntax on

colorscheme solarized8 "solarized8 desert morning 

set background=light

set tabstop=2	"a tab is four spaces

set shiftwidth=2

set  autoindent	"always set autoindenting on

set  copyindent	"always set autoindenting on

set number	 	"always show line number

set showmatch	"always show matching parenthesis

set hlsearch	"highlight search terms

set incsearch 	"show search matches as you type

set smartindent

set clipboard=unnamedplus

command Bd bp\|bd \#

autocmd BufNewFile,BufRead *.par set syntax=fortran
autocmd BufNewFile,BufRead *.usr set syntax=fortran
autocmd BufNewFile,BufRead SIZE set syntax=fortran
