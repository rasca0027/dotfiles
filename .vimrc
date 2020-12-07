set encoding=utf-8
set smarttab         " insert tabs on the start of a line according to context
set expandtab        " replace <TAB> with spaces
set softtabstop=4    " tab for 4 spaces
set shiftwidth=4     " > for 4 spaces (in visual mode)
set shiftround
set autoindent       " auto indentation
set copyindent       " copy the previous indentation on autoindenting
set nu
set ruler
set clipboard=unnamedplus
" set clipboard=unnamed
set guioptions+=a
set mouse=a
set ttimeoutlen=100

" encoding
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

set cursorline
highlight CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

execute pathogen#infect()
syntax on
filetype plugin indent on

" solarized
set background=dark
colorscheme solarized8

" F2 to toggle paste mode with visual cue
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" F12 to toggle number
:map <F12> :set number!<CR>
"" for insert mode
:imap <F12> <c-o>:set number!<CR>

" local language specific settings
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2

set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2  " always display the status line

" flake8
autocmd BufWritePost *.py call Flake8()
