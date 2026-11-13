if has('termguicolors')
  set termguicolors " 开启真彩色
endif
colorscheme moonfly

" 彻底去掉状态栏和左侧状态栏的背景色块
highlight StatusLine guibg=NONE guifg=#c6c6c6 ctermbg=NONE ctermfg=250
highlight StatusLineNC guibg=NONE guifg=#6b6b6b ctermbg=NONE ctermfg=240
highlight VertSplit guibg=NONE ctermbg=NONE

" 让窗口分割线完全隐形
highlight WindowSeparator guibg=NONE ctermbg=NONE

let &fillchars .= ',eob: '
set t_RC=
