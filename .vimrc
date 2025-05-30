" Show relative line numbers
set rnu

" Show line and column number in the status bar
set ruler

" Enable mouse support
set mouse=a

" Enable syntac highlighting
syntax on

" Incremental search
set incsearch

" Highlight search matches
set hlsearch

" Ignore case unless there's a capital letter
set ignorecase
set smartcase

" Automatically reload file if changed outside
set autoread
autocmd FocusGained,BufEnter * checktime

" Remember cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
    \ exe "normal! g`\"" | endif
endif

" Disable swap and backup files (optional)
set noswapfile
set nobackup
set nowritebackup
