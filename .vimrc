" run before using
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" :source %
" :PluginInstall
" 
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My pluginc here
Plugin 'scrooloose/nerdtree'
"Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/yajs.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'othree/es.next.syntax.vim'
"Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'mxw/vim-jsx'
"plugin 'altercation/vim-colors-solarized'
Plugin 'mhartington/oceanic-next'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'SuperTab'
Plugin 'mileszs/ack.vim'
"Plugin 'wincent/command-t'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'mtscout6/syntastic-local-eslint.vim'

let g:jsx_ext_required = 0

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"set macligatures

syntax enable
set background=dark
set t_Co=256
colorscheme OceanicNext
" colorscheme solarized

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
map <silent> <C-n> :NERDTreeFocus<CR>
set hlsearch
set shiftwidth=2
set tabstop=2
set softtabstop=2
set nu
set expandtab
set cursorline
set foldenable
set ignorecase
set wildignore+=*/bower_components/*,*/node_modules/*
set noswapfile
set backspace=indent,eol,start
:imap jj <Esc>

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.?(git|hg|svn|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

let g:ackprg = 'ag --vimgrep --smart-case'                                                   
cnoreabbrev ag Ack                                                                           
cnoreabbrev aG Ack                                                                           
cnoreabbrev Ag Ack                                                                           
cnoreabbrev AG Ack  

"syntastic config
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_loc_list = 0
" let g:syntastic_debug = 33
let g:syntastic_javascript_checkers = ["eslint"]
let g:syntastic_javascript_eslint_exec = 'eslint'
