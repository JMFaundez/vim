syntax on
filetype plugin indent on

colorscheme solarized8 "solarized8 desert morning 

set background=light

set tabstop=2	"a tab is two spaces

set shiftwidth=2 "indent using vim commands

set mouse=a

"set expandtab "Convert tab to spaces

set  autoindent	"always set autoindenting on

set  copyindent	"

set number	 	"always show line number

set showmatch	"always show matching parenthesis

set hlsearch	"highlight search terms

set incsearch 	"show search matches as you type

set smartindent

set colorcolumn=72

set clipboard=unnamedplus "copy and paste from external programs

set cursorline

set title

set t_Co=256

command Bd bp\|bd \# "delete buffer but dont close window

autocmd BufNewFile,BufRead *.par set syntax=fortran
autocmd BufNewFile,BufRead *.usr set syntax=fortran
autocmd BufNewFile,BufRead SIZE set syntax=fortran


" To turn off autoindent when pasting :set paste, then paste, :set nopaste
let fortran_free_source=1
let fortran_have_tabs=1


