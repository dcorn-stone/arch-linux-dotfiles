" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

filetype plugin indent on

set relativenumber

set termguicolors

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=2

" Show the mode you are on the last line.
set showmode

" Use highlighting when doing a search.
set hlsearch

set incsearch

set autoindent

set smartindent
" ======== BEGIN VIM-PLUG CONFIGURATION ========
" Initialize vim-plug by specifying where plugins will be installed

call plug#begin('~/.vim/plugged')

" 1. VS Code–like Color Theme:
Plug 'rakr/vim-one'

" 2. Autocompletion, code suggestions, & LSP support:
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 3. Directory browser:
Plug 'preservim/nerdtree'

" 4. Light and customizable statusline:
Plug 'itchyny/lightline.vim'

Plug 'bfrg/vim-c-cpp-modern'

Plug 'sheerun/vim-polyglot'

Plug 'nvim-treesitter/nvim-treesitter'

call plug#end()
" ======== END VIM-PLUG CONFIGURATION ========

" --- Basic UI Setup ---
syntax enable                  " Enable syntax highlighting
set number                 " Turn on line numbers
set showcmd                " Show partially typed commands
set cursorline             " Highlight the current line

" Set the vim-one color scheme (vim-one works best with a dark background)
set background=dark
colorscheme one

call one#highlight('vimLineComment', '32a852', '', 'none')
call one#highlight('Function', 'dbdb7b', '', 'none')
call one#highlight('Comment', '32a852', '', 'none')
" --- NERDTree Setup ---
" Map Ctrl+n to toggle NERDTree, similar to VS Code Explorer shortcut
nnoremap <C-n> :NERDTreeToggle<CR>

" --- coc.nvim Setup ---
" Basic mappings for autocompletion:
" Use Tab to navigate completion menu if visible, else insert a literal tab
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB>
      \ pumvisible() ? "\<C-p>" : "\<S-TAB>"

" Use <CR> to confirm completion selection when in the popup menu.
inoremap <silent><expr> <CR>
      \ pumvisible() ? coc#pum#confirm() : "\<CR>"

" Optionally, you may add more key mappings for Coc commands. For instance:
"   Go to definition with [g] for diagnostics navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)

" --- Coc.nvim Language Server Settings ---
" coc.nvim uses an external configuration file (coc-settings.json)
" Create or update ~/.vim/coc-settings.json with your language server preferences.
"
" Example (for Python and JavaScript):
"
" {
"   "suggest.noselect": false,
"   "coc.preferences.extensionUpdateCheck": "daily",
"   "languageserver": {
"     "python": {
"       "command": "pyls",
"       "filetypes": ["python"]
"     },
"     "javascript": {
"       "command": "javascript-typescript-stdio",
"       "filetypes": ["javascript", "javascriptreact", "typescript", "typescriptreact"]
"     }
"   }
" }


" --- Lightline Configuration ---
" Ensure the statusline is always visible:
set laststatus=2

" Basic lightline customization:
" Here we set the lightline colorscheme to match our vim-one theme.
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'inactive': {
      \   'left': [ [ 'filename' ] ]
      \ }
      \ }

highlight Identifier guifg=cyan2

inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha
