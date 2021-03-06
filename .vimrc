
"editor look
set number
set ruler
set wrap
syntax on

"theme
set t_Co=256
colorscheme molokai

"file format
set encoding=utf-8
set fileencoding=utf-8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ambiwidth=double

"search
set incsearch
set hlsearch
set smartcase

"editing
set autoindent

"white space
set list
set lcs=tab:\|_,trail:~

"smarty
let smarty_left_delimiter='{%'
let smarty_right_delimiter='%}'
au BufRead,BufNewFile *.tpl set filetype=html

"zencoding
let g:user_zen_settings = {
\ 	'smarty': {
\ 		'extends': 'html'
\ 	}
\}
let g:user_zen_expandabbr_key='<C-e>'

"plugin
filetype plugin indent on

"markdown
let g:vim_markdown_folding_disabled=1

set mouse=a
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" plugin not on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
Bundle 'JavaScript-syntax'
Bundle 'Better-Javascript-Indentation'
Bundle 'jQuery'
Bundle 'bufexplorer.zip'
Bundle 'rails'
Bundle 'fugitive'
Bundle 'surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
