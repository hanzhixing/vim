# How to Use

``` shell
git clone https://github.com/hanzhixing/vim.git ~/any/github/hanzhixing/vim

rm -rf ~/.vim

ln -s ~/any/github/hanzhixing/vim ~/.vim

ln -sf ~/.vim/vimrc ~/.vimrc
```

# What about plugins?
Use built-in package management mechanism. (Vim 8+)

See: https://vimhelp.org/repeat.txt.html#packages

Good plugins tell you how to do this!

Example:

``` shell
# NERDTree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

# ctrlp
mkdir -p ~/.vim/pack/plugins/start
git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/pack/plugins/start/ctrlp
```

Recommand to use the `vendor` or `plugins` directory, just pick one!

# Essential plugins you should look into.
- [nerdtree](https://github.com/preservim/nerdtree)
- [vim-surround](https://github.com/tpope/vim-surround)
- [ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
- [editorconfig-vim](https://github.com/editorconfig/editorconfig-vim)
- [vim-visual-multi](https://github.com/mg979/vim-visual-multi)
- [taglist](https://github.com/yegappan/taglist)
- [minibufexpl](https://github.com/fholgado/minibufexpl.vim)
