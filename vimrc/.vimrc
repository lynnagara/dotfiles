"
" General
"

set nocompatible " get rid of vim compatibility

" load pathogen
execute pathogen#infect() 

" for plugins to load correctly
filetype off
filetype plugin indent on


" Makefile uses tabs instead of spaces
autocmd FileType make setlocal noexpandtab

" Enable omnicompletion (to use, hold Ctrl+X then Ctrl+O while in Insert mode.
set ofu=syntaxcomplete#Complete


"
" Text formatting
"

syntax on " syntax highlighting

" Use spaces with indentation of 2
set autoindent
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set smartindent
set wrap


"
" Theme
"

syntax enable

colorscheme molokai

" Prettify JSON files
autocmd BufRead,BufNewFile *.json set filetype=json
autocmd Syntax json sou ~/.vim/syntax/json.vim

" Prettify Vagrantfile
autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby

" Prettify Markdown files
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END


set number " show line numbers
set numberwidth=6 " number gutter 6 characters wide
set cul " highlight current line
set laststatus=2 " last window always has a statusline
set hlsearch " highlight all searches
set incsearch " enable incremental search
set ignorecase " searches are case insensitive

set showmatch
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P

set cpoptions+=x " stay on line after ESC

" highlight columns > 80 characters
set colorcolumn=1
highlight ColorColumn ctermbg=235 guibg=#2d2d2d

