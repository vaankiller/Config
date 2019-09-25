call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/taglist.vim'
Plug 'tmhedberg/SimpylFold'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-scripts/YankRing.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'vim-python/python-syntax'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'
call plug#end()

set cursorline
highlight CursorLine   cterm=NONE ctermbg=gray ctermfg=None guibg=NONE guifg=NONE
set nocompatible
filetype on
set shortmess=atI   
set nu              
syntax enable          
syntax on           
color dracula
set mouse=
"set showcmd     
set cmdheight=1
set scrolloff=10 
set laststatus=1  
set nocompatible  
set clipboard+=unnamed 
set nobackup
set autowrite
set magic 
set confirm
set cindent
set tabstop=4
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4
set smarttab
set history=1000
set hlsearch
set incsearch
set gdefault
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set langmenu=zh_CN.UTF-8
set helplang=cn
set laststatus=2
set cmdheight=2
set viminfo+=!
set iskeyword+=_,$,@,%,#,-
set linespace=0
set wildmenu
set backspace=2
set selection=exclusive
set selectmode=mouse,key
set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\
set showmatch
set matchtime=1

set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set autoread
set completeopt=preview,menu 

" taglist config
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Sort_Type ='name'
let Tlist_WinWidth = 32

nmap <CR> <Esc>:TlistToggle<CR>

if version >= 603
    set helplang=cn
    set encoding=utf-8
endif


"使用F1键快速调出和隐藏它
map <F1> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
"显示书签"
let NERDTreeShowBookmarks=0
"设置忽略文件类型"
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"窗口大小"
let NERDTreeWinSize=35
" 修改默认箭头
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
"How can I open a NERDTree automatically when vim starts up if no files were specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 打开vim时自动打开NERDTree
"autocmd vimenter * NERDTree
"How can I open NERDTree automatically when vim starts up on opening a directory?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" 关闭vim时，如果打开的文件除了NERDTree没有其他文件时，它自动关闭，减少多次按:q!
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 开发的过程中，我们希望git信息直接在NERDTree中显示出来， 和Eclipse一样，修改的文件和增加的文件都给出相应的标注， 这时需要安装的插件就是 nerdtree-git-plugin,配置信息如下
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
" 显示行号
"let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1

" code fold plug
" 必须手动输入za来折叠（和取消折叠）
set foldmethod=indent                " 根据每行的缩进开启折叠
set foldlevel=32
" 使用空格键会是更好的选择,所以在你的配置文件中加上这一行命令吧：
nnoremap <space> za
" 希望看到折叠代码的文档字符串？
let g:SimpylFold_docstring_preview=1

" limelight and goyo
"进入goyo模式后自动触发limelight,退出后则关闭
let goyo_width=120
let limelight_conceal_ctermfg='gray'
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" python-vim syntax highlight
let python_highlight_all = 1

" pyflake8 plugin
" let g:flake8_show_in_gutter=1
" let g:flake8_show_quickfix=0

" ale plug
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
