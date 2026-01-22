" Use space as the mapleader
let mapleader = " "

set termguicolors

" Indentation settings
set autoindent
set smartindent
set shiftwidth=8
set tabstop=8
set softtabstop=8
set ignorecase
set expandtab
set smartcase
set incsearch
set undofile

syntax on
filetype plugin indent on

nnoremap Y y$
nnoremap J 5j
nnoremap K 5k

nnoremap <leader>q :q<CR>
nnoremap <S-h> gT
nnoremap <S-l> gt
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-l> :wincmd l<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>m :vertical split Man 



" Search behavior
nnoremap <leader>/ :nohlsearch<CR>

" ============================
" Terminal Mapping
" ============================
" <C-/> to open a vertical terminal on the right


nnoremap <silent> <C-/> :vert terminal<CR>
nnoremap <silent> <C-e> :Vexplore<CR>


" Note: <C-/> is interpreted as <C-_> in Vim

" Make terminal mode easier to exit
tnoremap <Esc> <C-\><C-n>

" ============================
" UI / Quality of Life
" ============================

set number              " line numbers
set relativenumber      " relative numbers for movement
" set cursorline          " highlight current line
set showmatch           " highlight matching brackets
set wildmenu            " better command-line completion
set wildmode=longest:full,full

set nowrap              " don't wrap long lines
set scrolloff=5         " keep cursor away from screen edges

" Better backspace behavior
set backspace=indent,eol,start

" Highlight trailing whitespace (helps in C code)
set list
set listchars=trail:·,tab:>-

" Faster updates
set updatetime=300

" ============================
" C-specific tweaks
" ============================
" Use GNU-style formatting when autoindenting
set cindent
set cinoptions=:0,l1,t0,g0,(0


set laststatus=2
set statusline=%f\ %y\ %m\ %r\ %=Ln:%l/%L\ Col:%c\ (%p%%)

set showtabline=2



" Basic auto-pairing mappings for insert mode
" Automatically inserts a closing quote/bracket and moves the cursor one position left
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

" Optional: Smarter handling for newlines with curly braces
" When you press Enter after an opening brace, it creates a new line, indents,
" and places the closing brace on a new line below
inoremap {<CR> {<CR>}<ESC>O

" Use a line cursor within insert mode and a block cursor everywhere else.
let &t_SI = "\e[6 q" " steady bar (line) cursor in insert mode
let &t_EI = "\e[2 q" " steady block cursor otherwise (normal mode)

" Optional: add specific cursors for other modes
" let &t_SR = "\e[4 q" " steady underline cursor in replace mode

