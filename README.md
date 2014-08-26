Advancevim
==========
##Introduction
Vim and Emacs is the most popular used in POSIX. With the given plugins we can use vim more conveniently, included the ctags,cscopes taglist,calendar.etc
##Features
- [ctags](http://ctags.sourceforge.net)
- [cscope](http://cscope.sourceforge.net)
- [TagList](https://github.com/vim-scripts/taglist.vim)
- WinManager
- MiniBufExplorer
- ShowMarks
- EchoFunction
- Vim org mode
- calendar
- [pathogen](https://github.com/tpope/vim-pathogen)
- [visualmark](http://www.vim.org/scripts/download_script.php?src_id=4700)
- [NERDTree](https://github.com/scrooloose/nerdtree)
- [textmateOnly](http://snippetsemu.googlecode.com/svn/branches/textmateOnly/)
- [emmet-vim](https://github.com/mattn/emmet-vim)
- [pathogen](https://github.com/tpope/vim-pathogen)
- [NERDTree](https://github.com/scrooloose/nerdtree)
- [Command-T](https://wincent.com/products/command-t)


##Getting Started

- Copy plugins into vim env
```
	$ mkdir ~/.vim   //if ~/.vim doesn't exists
	$ cp -r autoload bundle docs ~/.vim/
	$ sudo cp vimrc /etc/vim/
```
- Install ctags
```
	$ cd ./lib	
	$ tar xf ctags-5.8.tar.gz
	$ cd ctags-5.8
	$ ./configure
	$ make
	$ sudo make install
```
- Install cscopes
```
	$ cd ./lib
	$ tar xf cscop-15.8a.tar.gz
	$ cd cscop-15.8a
	$ ./configure
	$ make
	$ sudo make install
```
- Copy bash file to /usr/local/bin 
```
	$ sudo cp ./bin/cscope* /usr/local/bin
	$ sudo chmod u+x /usr/local/bin/cscope*
```
  
##Documents
For more information on how to install vim plugins,see 
[How to install ctags and cscopes](http://blog.csdn.net/alexanderkenndy/article/details/24042713)
