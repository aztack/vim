set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

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


set rtp+=$VIM/vimfiles/bundle/vundle/
let path='$VIM/vimfiles/bundle'
call vundle#rc(path)
call vundle#begin()

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
call vundle#end()            " required
filetype plugin indent on    " required
