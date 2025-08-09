set nocompatible  " 不要基于vi
set number        " 设置行号
set noshowmode    " 隐藏模式
set showcmd       " 显示指令
set hlsearch      " 设置高亮搜索
set ignorecase    " 忽略大小写
set incsearch     " 设置渐进式搜索
set smartcase     " 智能搜索
set nobackup      " 设置不备份
set noswapfile    " 取消生成临时文件
set cursorline    " 高亮当前行
set showtabline=2 " 只有一个档案时也要显示
set splitbelow    " 在下面开一个水平视窗
set splitright    " 右侧开一个垂直视窗

" 设置文件编码
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

if has('termguicolors')
  set termguicolors " 开启真彩色
endif
colorscheme evening
colorscheme iceberg

" 缩进相关
set softtabstop=2 " 设置tab
set shiftwidth=2  " 设置缩进
set expandtab     " tab转空白
set autoindent    " 设置自动缩进
set cindent       " 针对c/c++

" 文件类型
filetype on
filetype indent on
filetype plugin on

" 启用Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" 设置TODO和DEBUG命令
command! Todo Ack! 'TODO|FIXME|CHANGED|BUG|todo|fixme|changed|bug'

command! Debug Ack! 'NOTE|INFO|note|info'

cnoreabbrev todo Todo

cnoreabbrev debug Debug

if has("autocmd")
  " Highlight TODO, FIXME, NOTE, etc.
  if v:version > 701
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|BUG\|todo\|fixme\|changed\|bug\)')
    autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|note\|info\)')
  endif
endif

" 设置折叠
set foldenable        " 启用折叠
set foldlevel=99      " 默认折叠级别
set foldnestmax=10    " 最大嵌套折叠数
set foldcolumn=1      " 折叠列宽度
set foldtext=folded   " 折叠文本显示
set foldminlines=1    " 折叠最小行数
set foldmethod=syntax " 使用语法折叠
syntax enable


