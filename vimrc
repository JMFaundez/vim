set nocompatible "God knows...
syntax on 
filetype plugin indent on "No idea, copied from internet


"set termguicolors "Not Needed by solarized8 after adding the line in .bashrc

set tabstop=2	"a tab is two spaces

set shiftwidth=2 "indent using vim commands

"set mouse+=a "To use mouse in every mode (use shift when copy and paste)

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


" let g:polyglot_disabled = ['octave']

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
Plug 'tpope/vim-fugitive'

call plug#end()

let g:gruvbox_contrast_light='medium'
let g:gruvbox_contrast_dark='medium'
colorscheme gruvbox "solarized8
"colorscheme solarized8
"let g:airline_theme='sol'
"let g:solarized_termcolors=256

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX) && getenv('TERM_PROGRAM') != 'Apple_Terminal')
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

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


