" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
set nocompatible

" Disable swap files
set noswapfile

" Turn on syntax highlighting.
syntax on

" Disable the default Vim startup message.
set shortmess+=I

" Show line numbers.
set number

" Turn off line wrap
set nowrap

" Enable relative line numbering mode
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. But
" hidden buffers are helpful so we disable this protection
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. It can be convenient sometimes.
set mouse+=a

" Automatically add indentation to the next line when you hit enter
set autoindent

" Add color scheme
syntax enable
set background=dark       " or 'light'
set termguicolors         " Enable true colors
colorscheme gruvbox

" Remap scrolling
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Remap copy to clipboard and paste from clipboard
vnoremap <C-c> "+y
map <C-v> "+p

" Set tab space to 4 spaces
set tabstop=4       " Display width of a tab character
set shiftwidth=4    " Indentation level when using >>, <<, or auto-indent

" Set leader key
let mapleader = " "




" NERDTree

" Remap NERDTreeToggle
nnoremap <C-n> :NERDTreeToggle<CR>

" Open NERDTree if vim is opened without any file name
autocmd VimEnter * if !argc() | NERDTree | endif




" ctrlp.vim

" Faster caching
let g:ctrlp_use_caching = 1

" Ignore certain files or directories (like git, node_modules, etc.)
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*,*/.git/*,*/.cache/*,*/__pycache__/*,*.pyc,*.o,*.class

" Show hidden files
let g:ctrlp_show_hidden = 1

" Remap <C-f> to search under home directory
nnoremap <C-f> :CtrlP /home/maggi<CR>




" vim-airline

" Turn off whitespace warnings
let g:airline#extensions#whitespace#enabled = 0

set laststatus=2                    " Always show the status line
set noshowmode                      " Don't show mode since airline displays it
let g:airline_powerline_fonts = 1   " Enable powerline font
let g:airline_theme='gruvbox'

" Status bar display settings
let g:airline_section_a = airline#section#create(['mode'])
let g:airline_section_b = airline#section#create(['branch'])
let g:airline_section_c = airline#section#create(['%f'])
let g:airline_section_x = ''
let g:airline_section_y = airline#section#create(['%p%%'])
let g:airline_section_z = airline#section#create(['%l:%c'])




" ALE

" Linting conditions
let g:ale_lint_on_text_changed = 'never'   " lint when saving a file
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 1                " lint when opening a file

" Display error messages in the status line
let g:ale_echo_cursor = 1

" Use airline integration
let g:airline#extensions#ale#enabled = 1

" Show lint results in quickfix list
let g:ale_set_quickfix = 1

" Tell ALE to use your virtualenv executables
let g:ale_python_flake8_executable = expand('~/.pylint/bin/flake8')
let g:ale_python_black_executable  = expand('~/.pylint/bin/black')
let g:ale_python_isort_executable  = expand('~/.pylint/bin/isort')
let g:ale_python_pylsp_executable  = expand('~/.pylint/bin/pylsp')

" Set linters/LSP
let g:ale_linters = {
\   'c': ['clangd', 'clangtidy'],
\   'cpp': ['clangd', 'cppcheck'],
\   'python': ['pylsp', 'flake8'],
\   'javascript': ['tsserver', 'eslint'],
\   'html': ['vscode-html-languageserver'],
\   'css': ['vscode-css-languageserver'],
\}

" Set fixers
let g:ale_fixers = {
\   'c': ['clang-format'],
\   'cpp': ['clang-format'],
\   'python': ['black', 'isort'],
\   'javascript': ['prettier', 'eslint'],
\   'html': ['prettier'],
\   'css': ['prettier', 'stylelint'],
\}

" Customize clang-format style
let g:ale_cpp_clangformat_options = '-style=file'

" Toggle ALE on/off
nnoremap <leader>at :ALEToggle<CR>

" Run ALEFix (format and auto-fix)
nnoremap <leader>af :ALEFix<CR>

" Run ALELint manually
nnoremap <leader>al :ALELint<CR>

" Jump to next/previous ALE error
nnoremap <leader>an :ALENextWrap<CR>
nnoremap <leader>ap :ALEPreviousWrap<CR>

" Open quickfix list with all ALE errors
nnoremap <leader>aq :ALEReset<CR>:lopen<CR>

" Show detailed ALE info (debug)
nnoremap <leader>ai :ALEInfo<CR>

" Hover info (LSP documentation)
nnoremap <leader>ah :ALEHover<CR>
