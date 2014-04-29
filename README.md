```
cd ~
git clone https://github.com/aztack/vim.git .vim
ln -s .vimrc .vim/.vimrc
```

https://github.com/gmarik/Vundle.vim/wiki/Vundle-for-Windows

```
git clone https://github.com/gmarik/vundle.git vimfiles/bundle/vundle
gvim _vimrc
```

edit _vimrc
```vim
set rtp+=~/vimfiles/bundle/vundle/
let path='~/vimfiles/bundle'
call vundle#rc(path)
```
