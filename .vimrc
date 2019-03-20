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
set guioptions+=a
" set mouse=a

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

" " airline
" set status line
set laststatus=2
" enable powerline-fonts
let g:airline_powerline_fonts = 1
" enable tabline
let g:airline#extensions#tabline#enabled = 1
" set left separator
let g:airline#extensions#tabline#left_sep = ' '
" set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = '|'
" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1
" change theme
let g:airline_theme='wombat'
" not showing command bar
let g:bufferline_echo = 0
set noshowmode

" jedi
let g:jedi#popup_on_dot = 0

" copycat
let g:copycat#auto_sync = 1
let g:copycat#clip = 'vim'



