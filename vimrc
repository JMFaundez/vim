set nocompatible "God knows...
syntax on 
filetype plugin indent on "No idea, copied from internet


"set termguicolors "Not Needed by solarized8 after adding the line in .bashrc

set tabstop=2	"a tab is two spaces

set shiftwidth=2 "indent using vim commands

set mouse+=a "To use mouse in every mode (use shift when copy and paste)

set expandtab "Convert tab to spaces

set  autoindent	"always set autoindenting on

set  copyindent	"copy the previous indentation on autoindenting

set number	 	"always show line number

set showmatch	"always show matching parenthesis

set hlsearch	"highlight search terms

set incsearch 	"show search matches as you type

set smartindent

set colorcolumn=72

set clipboard=unnamedplus "copy and paste from external programs

set cursorline "Highlight cursor line

set title

set wildmenu
set wildmode=longest:list,full

"You can use gj and gk to move by screen lines. 
set wrap linebreak

" To turn off autoindent when pasting :set paste, then paste, :set nopaste
set pastetoggle=<F2>

"set t_Co=256

set nobackup "remove backup files after saved properly
" directory to store the annoying swap and backup files
set backupdir=~/.vim/vimtmp//,.
set directory=~/.vim/vimtmp//,.

call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lifepillar/vim-solarized8'
Plug 'plasticboy/vim-markdown'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'w0rp/ale'
Plug 'lervag/vimtex'
Plug 'morhetz/gruvbox'

call plug#end()

colorscheme gruvbox "solarized8
let g:airline_theme='sol'
"let g:solarized_termcolors=256

set background=light


command Bd bp\|bd \# "delete buffer but dont close window

autocmd BufNewFile,BufRead *.par set syntax=fortran
autocmd BufNewFile,BufRead *.usr set syntax=fortran
autocmd BufNewFile,BufRead SIZE set syntax=fortran



" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif

let fortran_free_source=1
let fortran_have_tabs=1


