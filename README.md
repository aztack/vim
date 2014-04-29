```
cd ~
git clone https://github.com/aztack/vim.git .vim
ln -s .vimrc .vim/.vimrc
```

https://github.com/gmarik/Vundle.vim/wiki/Vundle-for-Windows

```
cd vim_install_dir
git clone https://github.com/gmarik/vundle.git vimfiles/bundle/vundle
gvim _vimrc
```

edit _vimrc
```vim
set rtp+=$VIM/vimfiles/bundle/vundle/
let path='$VIM/vimfiles/bundle'
call vundle#rc(path)
call vundle#begin()

Bundle 'JavaScript-syntax'
Bundle 'Better-Javascript-Indentation'
Bundle 'jQuery'
Bundle 'bufexplorer.zip'
Bundle 'rails'
Bundle 'fugitive'
Bundle 'surround'

call vundle#end()
```
