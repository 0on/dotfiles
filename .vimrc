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

Plugin 'HerringtonDarkholme/yats.vim'
"Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'mxw/vim-jsx'
Plugin 'mhartington/oceanic-next'
Plugin 'YorickPeterse/happy_hacking.vim'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'rakr/vim-one'
Plugin 'w0ng/vim-hybrid'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'SuperTab'
Plugin 'mileszs/ack.vim'
"Plugin 'wincent/command-t'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'
Plugin 'Raimondi/delimitMate'
Plugin 'ap/vim-css-color'
Plugin 'udalov/kotlin-vim'
Plugin 'hdima/python-syntax'
Plugin 'rizzatti/dash.vim'
" Plugin 'Yggdroot/indentLine'
"Plugin 'flowtype/vim-flow'
Plugin 'elixir-lang/vim-elixir'
Plugin 'ktmud/perl-tmpl.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'ElmCast/elm-vim'
if version > 701
  " Plugin 'scrooloose/syntastic'
  " Plugin 'mtscout6/syntastic-local-eslint.vim'
  " autocomplete (instal.py!!!)
  Plugin 'Valloric/YouCompleteMe'
  Plugin 'w0rp/ale'
endif

"filetype plugin on
"set omnifunc=syntaxcomplete#Complete

let g:jsx_ext_required = 0

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"set macligatures

syntax enable
set background=light
set t_Co=256
"colorscheme OceanicNext
colorscheme solarized
"colorscheme happy_hacking
"colorscheme quantum
"colorscheme hybrid_material
"colorscheme one
"colorscheme hybrid
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
set incsearch
set showmatch
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
set autoindent

if version > 702
  set relativenumber
endif

let mapleader = ","

command! Tp execute ":tabnew \| :CtrlP:<CR>"
command! Tn execute ":tabnew \| :NERDTree"
command! -nargs=1 Ta tabe | Ack <q-args>
command! TG execute ":tab split \| :NERDTreeFind \| :wincmd p"
command! Tg execute ":tab split \| :NERDTreeFind"

:imap jj <Esc>
nnoremap <Leader>b :Tp<ENTER>
nnoremap <Leader>n :Tn<ENTER>
nnoremap <Leader>m :Ta
nnoremap <Leader>f :NERDTreeFind<CR>
nnoremap <Leader>g :Tg<ENTER> 
nnoremap <Leader>G :TG<ENTER> 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let @t = 'A // TODO '

" nerdcommenter config
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTrimTrailingWhitespace = 1
let g:NERDCompactSexyComs = 1
let NERDTreeShowHidden=1

" CTRLP config
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.?(git|hg|svn|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_max_files = 50000
let g:ctrlp_max_height = 10
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 5000
let g:ctrlp_cache_dir = '~/.vim/tmp/ctrlp'
let g:ctrlp_clear_cache_on_exit = 0
" CTRLP config end

let g:ackprg = 'ag --vimgrep --smart-case'                                                   
cnoreabbrev ag Ack                                                                           
cnoreabbrev aG Ack                                                                           
cnoreabbrev Ag Ack                                                                           
cnoreabbrev AG Ack  

cnoreabbrev W w  

" status line setup here 
:set laststatus=2          " Show statusline
:set statusline=%f         " Path to the file
:set statusline+=%h%m      " File status
:set statusline+=%=        " Switch to the right side
:set statusline+=%l        " Current line
:set statusline+=/         " Separator
:set statusline+=%L        " Total lines
" end

:set conceallevel=0

if version > 702
"syntastic config
  " let g:syntastic_always_populate_loc_list = 0
  " let g:syntastic_check_on_open = 1
  " let g:syntastic_check_on_wq = 0
  " let g:syntastic_auto_loc_list = 0
  " "let g:syntastic_debug = 33
  " let g:syntastic_javascript_checkers = ["eslint"]
  " let g:syntastic_javascript_eslint_exec = 'eslint'

  let g:ycm_semantic_trigers = {
        \ 'elm' : ['.'],
        \}
  " autocomlete hint panel
  let g:ycm_autoclose_preview_window_after_completion=1
  set splitbelow
endif

" human regex search
nnoremap / /\v
vnoremap / /\v

" let's disable arrows
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

" <PasteStart> workaround
" https://github.com/vim/vim/issues/1407
set t_BE=

" ALE git merge fix
let g:ale_emit_conflict_warnings=0
