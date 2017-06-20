
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)



set shortmess=atI   
set nu              
syntax enable          
syntax on           
set mouse=
set showcmd         
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

let Tlist_Exit_OnlyWindow=1

nmap <CR> <Esc>:TlistToggle<CR>

if version >= 603
    set helplang=cn
    set encoding=utf-8
endif
