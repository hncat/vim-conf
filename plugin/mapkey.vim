" 禁用上下左右键
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" 当光标一段时间保持不动了，就禁用高亮
autocmd cursorhold * set nohlsearch
" 当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>
noremap # #:set hlsearch<cr>

" 转到定义
noremap <silent> gd <Plug>(coc-definition)
noremap <silent> gt <Plug>(coc-type-definition)
noremap <silent> gi <Plug>(coc-implementation)
noremap <silent> gr <Plug>(coc-references)

" 定义前缀
let mapleader=" "

" 映射NERDTree
noremap <silent><leader>n :NERDTreeToggle<cr>

" 更改搜索文件命令的默认映射(LeaderF)
let g:Lf_ShortcutF='<leader>f'

" clang-format 格式化代码(快捷键=c)
noremap <silent>=c :ClangFormat<cr>

