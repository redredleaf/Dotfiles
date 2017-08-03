""""""""""""""""""""""""""""""
" 基本设置
""""""""""""""""""""""""""""""

" 启动时隐去援助提示
set shortmess=atI

" 访问系统剪贴板
set clipboard=unnamed
set backspace=2

" 显示行号
set number

" 显示标尺
set ruler

" 历史记录
set history=1000

" 语法高亮
syntax on
syntax enable

" 关闭提示声
set vb t_vb=

" 退出确认
set confirm

" 缩进
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set smartindent
set foldmethod=indent

" 自动对齐
set autoindent

" 文件自动检测外部更改
set autoread

" 禁止生成临时文件
set writebackup
set nobackup
set noswapfile

" 搜索忽略大小写
set ignorecase

" 搜索字符高亮
set hlsearch
set incsearch

" 行内替换
set gdefault

"显示输入的命令
set showcmd

" 高亮显示匹配括号
set showmatch

" 匹配括号高亮的时间
set matchtime=1

" 高亮显示当前行/列
set cursorline
set cursorcolumn

" 允许插件
filetype plugin on

" 自动格式化
set formatoptions=tcrqn

" 文件编码
set encoding=utf-8
set termencoding=utf-8

" 启用鼠标
set mouse=a
"set paste

" 自动切换工作目录
set autochdir

" 总是显示状态栏
"set laststatus=2

" 高亮括号与运算符等
au! BufRead,BufNewFile,BufEnter *.{c,cpp,h,javascript} call CSyntaxAfter()

" 自动跳转到上次关闭的位置
autocmd BufReadPost *
            \ if line("'\"")>0&&line("'\"")<=line("$") |
            \   exe "normal g'\"" |
            \ endif

" 配置变更立即生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC

""""""""""""""""""""""""""""""
" 键位映射
""""""""""""""""""""""""""""""

" esc
inoremap jj <Esc>

" leader
let mapleader="\<Space>"

" 保存或退出
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>W :wq<CR>

" 分屏切换
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>h <c-w>h
nnoremap <leader>l <c-w>l

" 分屏
nnoremap <leader>he :He<CR>
nnoremap <leader>ve :Ve<CR>

" 换页
nnoremap <leader>f <c-f>
nnoremap <leader>b <c-b>

" cS 清除行尾空格
nmap cS :%s/\s\+$//g<cr>:noh<cr>
"
" cM 清除行尾 ^M 符号
nmap cM :%s/\r$//g<cr>:noh<cr>

""""""""""""""""""""""""""""""
" 插件列表
""""""""""""""""""""""""""""""

" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'mhinz/vim-startify'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
Plugin 'junegunn/vim-easy-align'

call vundle#end()
filetype plugin indent on

""""""""""""""""""""""""""""""
" 插件设置
""""""""""""""""""""""""""""""

" use theme
set background=dark
colorscheme gruvbox

" neocomplcache
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_smart_case = 1
" let g:neocomplcache_disable_auto_complete=1

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" nerdtree
nmap <Leader>fl :NERDTreeToggle<CR>
let NERDTreeAutoDeleteBuffer=1
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
let NERDTreeMinimalUI = 1

" jedi-vim
let g:jedi#auto_initialization = 0

" supertab
let g:SuperTabDefaultCompletionType = 'context'

" Startify
nnoremap <F2> :Startify<CR>

" easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
