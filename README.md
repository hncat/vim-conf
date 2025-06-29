# vim-conf

## 环境搭建(Ubuntu)
安装gcc g++ cmake gdb
sudo apt install gcc g++ cmake gdb
安装[Node Version Manager(nvm)](https://github.com/nvm-sh/nvm)

安装node(根据自己喜欢安装版本)
  nvm install v20.11.0

安装clangd(提供c/c++ lsp)
  sudo apt install clangd

安装clang-format(代码格式化)
  sudo apt install clang-format

安装Ack
  sudo apt-get install silversearcher-ag

## 环境配置
1. 跳转到家目录 cd ~ or cd (cd $HOME)
2. git整个项目 git clone https://github.com/hncat/vim-conf.git
3. 将文件修改位.vim mv vim-conf .vim
4. 创建软链接使vim配置生效 ln -s .vim/.vimrc .vimrc
5. 安装vim插件
```
使用vim指令进入vim $HOME> vim
在普通模式下输入:PlugInstall
```
6. 安装语言服务器[LSP](https://github.com/neoclide/coc.nvim/wiki/Language-servers#ccobjective-c)
```
要安装什么类型的语言服务器可以直接去文档里面找(这里只演示了c/c++(基于clangd)和cmake)
使用vim指令进入vim $HOME> vim
:CocInstall coc-clangd
:CocInstall coc-cmake
```

## 关于[LeaderF](https://github.com/Yggdroot/LeaderF)错误的解决
```
安装Python2或者Python3
```

