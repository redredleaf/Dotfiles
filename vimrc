" Vundle 配置
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'							" 自动缩进
Plugin 'scrooloose/syntastic'									" 语法检查
Plugin 'nvie/vim-flake8'										" PEP8代码检查
Plugin 'jnurmine/Zenburn'										" 配色方案
Plugin 'scrooloose/nerdtree'									" 文件树
Plugin 'jistr/vim-nerdtree-tabs'								" 文件树 tab
Plugin 'tpope/vim-fugitive'										" 集成 git
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}	" 状态栏
Plugin 'Valloric/YouCompleteMe'									" 自动补全
Plugin 'Raimondi/delimitMate'									" 自动补全符号

call vundle#end()
filetype plugin indent on

" NERDTree 配置
let NERDTreeIgnore=['\.pyc$', '\~$']	" ignore files in NERDTree
" autocmd VimEnter * NERDTree				" 启动 vim 自动开启 tree	 
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
let NERDTreeWinPos="left"
autocmd VimEnter * wincmd p
let NERDTreeShowBookmarks=1

" YouCompleteMe 配置
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" delimitMate 配置
au FileType python let b:delimitMate_nesting_quotes = ['"']
" au FileType python let b:delimitMate_autoclose =0 
let g:delimitMate_expand_cr = 1
" 关闭某些文件的自动补全

" Python 注释
function InsertPythonComment()
	exe 'normal'.1.'G'
	let line = getline('.')
    if line =~ '^#!.*$' || line =~ '^#.*coding:.*$'
    return
    endif
    normal O
	call setline('.', '#!/usr/bin/env python3')
    normal o
    call setline('.', '# -*- coding:utf-8 -*-')
	normal o
	call setline('.', '# author: Windrivder')
    normal o
    call setline('.', '# email : windrivder@gmail.com')
    normal o
    call setline('.', '# date  : '.strftime("%y/%m/%d %H:%M:%S"))
    normal o
endfunction
function InsertCommentWhenOpen()
    if a:lastline == 1 && !getline('.')
        call InsertPythonComment()
    end
endfunc
au FileType python :%call InsertCommentWhenOpen()
au FileType python map <F4> :call InsertPythonComment()<cr>

" 访问系统剪贴板
set clipboard=unnamed

" 代码高亮
let python_highlight_all=1
syntax on

" 屏幕分割
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" PEP8
au BufNewFile,BufRead *.p	
\ set tabstop=4
\ set softtabstop=4
\ set shiftwidth=4
\ set textwidth=79
\ set expandtab
\ set autoindent
\ set fileformat=unix

" 针对每种文件类型设置缩进
au BufNewFile,BufRead *.js, *.html, *.css
\ set tabstop=2
\ set softtabstop=2
\ set shiftwidth=2

" 不要使用vi的键盘模式，而是vim自己的  
set nocompatible  

" 语法高亮  
set syntax=on  
  
" 去掉输入错误的提示声音  
set noeb  
  
" 在处理未保存或只读文件的时候，弹出确认  
set confirm  
  
" 自动缩进  
set autoindent  
set cindent  
  
" Tab键的宽度  
set tabstop=4  
  
" 统一缩进为4  
set softtabstop=4  
set shiftwidth=4  
  
" 不要用空格代替制表符  
set noexpandtab  
  
" 在行和段开始处使用制表符  
set smarttab  
  
" 显示行号  
set number  
  
" 历史记录数  
set history=1000  
  
"禁止生成临时文件  
set nobackup  
set noswapfile  
  
"搜索忽略大小写  
set ignorecase  
  
"搜索逐字符高亮  
set hlsearch  
set incsearch  
  
"行内替换  
set gdefault  
  
"编码设置  
set enc=utf-8  
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936  
  
"语言设置  
set langmenu=zh_CN.UTF-8  
set helplang=cn  
  
" 我的状态行显示的内容（包括文件类型和解码）  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}  
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]  
  
" 总是显示状态行  
set laststatus=1  
  
" 在编辑过程中，在右下角显示光标位置的状态行  
set ruler             
  
" 命令行（在状态行下）的高度，默认为1，这里是2  
set cmdheight=1  
  
" 侦测文件类型  
filetype on  
  
" 载入文件类型插件  
filetype plugin on  
  
" 为特定文件类型载入相关缩进文件  
filetype indent on  
  
" 保存全局变量  
set viminfo+=!  
  
" 带有如下符号的单词不要被换行分割  
set iskeyword+=_,$,@,%,#,-  
  
" 字符间插入的像素行数目  
set linespace=0  
  
" 增强模式中的命令行自动完成操作  
set wildmenu  
  
" 使回格键（backspace）正常处理indent, eol, start等  
set backspace=2  
  
" 允许backspace和光标键跨越行边界  
set whichwrap+=<,>,h,l  
  
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）  
set mouse=a  
set selection=exclusive  
set selectmode=mouse,key  
  
" 通过使用: commands命令，告诉我们文件的哪一行被改变过  
set report=0  
  
" 启动的时候不显示那个援助索马里儿童的提示  
set shortmess=atI  
  
" 在被分割的窗口间显示空白，便于阅读  
set fillchars=vert:\ ,stl:\ ,stlnc:\  
  
" 高亮显示匹配的括号  
set showmatch  
  
" 匹配括号高亮的时间（单位是十分之一秒）  
set matchtime=1  
  
" 光标移动到buffer的顶部和底部时保持3行距离  
set scrolloff=3  
  
" 为C程序提供自动缩进  
set smartindent

" C的编译和运行  
map <F5> :call CompileRunGcc()<CR>  
func! CompileRunGcc()  
exec "w"  
exec "!gcc % -o %<"  
exec "! ./%<"  
endfunc

" 能够漂亮地显示.NFO文件  
set encoding=utf-8  
function! SetFileEncodings(encodings)  
    let b:myfileencodingsbak=&fileencodings  
    let &fileencodings=a:encodings  
endfunction  
function! RestoreFileEncodings()  
    let &fileencodings=b:myfileencodingsbak  
    unlet b:myfileencodingsbak  
endfunction  
  
au BufReadPre *.nfo call SetFileEncodings('cp437')|set ambiwidth=single  
au BufReadPost *.nfo call RestoreFileEncodings()

" 用空格键来开关折叠  
set foldenable  
set foldmethod=manual  
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> 
