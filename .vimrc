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
" set clipboard=unnamedplus
set clipboard=unnamed
set guioptions+=a
set mouse=a
set ttimeoutlen=100
set laststatus=2
set backspace=indent,eol,start

" encoding
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

set cursorline
highlight CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

syntax on
filetype plugin indent on

" theme
packadd! seoul256.vim 
syntax enable
colorscheme seoul256

packadd! vim-signature
" https://github.com/junegunn/fzf.vim/issues/1102#issuecomment-717417278
packadd! fzf
packadd! fzf.vim
packadd YouCompleteMe
packadd vim-rails
packadd vim-prisma

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
autocmd FileType typescript setlocal ts=2 sts=2 sw=2
autocmd FileType css setlocal ts=2 sts=2 sw=2
autocmd FileType json setlocal ts=2 sts=2 sw=2
autocmd FileType markdown setlocal formatoptions+=a

set laststatus=2  " always display the status line

" flake8
autocmd BufWritePost *.py call Flake8()
" terraform
autocmd BufWritePost *.tf !terraform fmt
" typescript
autocmd BufWritePost *.ts !yarn run lint

" YCM
nmap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap gr :YcmCompleter GoToReferences<CR>

" CWD to the root of git repo when opening file inside repo
let g:gitroot=system("git rev-parse --show-toplevel")
let g:is_gitrepo = v:shell_error == 0
silent! cd `=gitroot
let g:vim_isort_map = '<C-i>'
