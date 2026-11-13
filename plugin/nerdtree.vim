" NERDTree
let g:NERDTreeMinimalUI=1
let g:NERDTreeWinSizeMax=30
let g:NERDTreeShowHidden=1 " 显示隐藏文件

" 当 NERDTree 是最后一个窗口时，自动关闭
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" 每个选项卡上自动使用相同的 NERDTree
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif
" 防止其他缓冲区替换其窗口中的 NERDTree
autocmd BufEnter * if winnr() == winnr('h') && bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
      \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrowExpandable  = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeIndent = 2

hi NERDTreeDir       guifg=#83a598 ctermfg=109
hi NERDTreeDirIcon   guifg=#83a598 ctermfg=109
hi NERDTreeOpenable  guifg=#83a598 ctermfg=109
hi NERDTreeClosable  guifg=#83a598 ctermfg=109
hi NERDTreeFile      guifg=#d5c4a1 ctermfg=223

" 给文件夹节点加图标（默认就是 1，写上保险）
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" 关键：打开/关闭使用不同图标
let g:DevIconsEnableFoldersOpenClose = 1

" 去掉文件夹名末尾的 /
augroup nerdtree_ui
  autocmd!
  autocmd FileType nerdtree setlocal concealcursor=nvic conceallevel=3
  autocmd FileType nerdtree syntax match NERDTreeSlash #/$# containedin=NERDTreeDir conceal
augroup END

autocmd ColorScheme * hi NERDTreeRoot gui=bold guifg=#d3869b cterm=bold ctermfg=175
let g:NERDTreeChDirMode = 2   " 可选，打开文件时 vim 工作目录跟随
