set nocompatible              " be iMproved
filetype off                 " required!


" ========  配色方案,语法高亮及界面设置 ==========            
syntax enable
colorscheme desert
set transparency=0       " 透明背景
set showtabline=2		 " 开启自带的tab栏
set guifont=Monaco:h13   " 设置字体和大小



set number                " show line number
set showmatch             " 设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号

set noerrorbells 		  " 关闭错误信息响铃
set novisualbell          " 关闭使用可视响铃代替呼叫
set t_vb=                 " 置空错误铃声的终端代码

set laststatus=2          " 显示状态栏 (默认值为 1, 无法显示状态栏)
set ruler                 " 在编辑过程中，在右下角显示光标位置的状态行
set incsearch             " 找要匹配的单词



" 设置在状态行显示的信息
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\


" ========  光标设置 ==========
set cursorline            " 高亮光标所在行
set cursorcolumn          " 高亮光标所在列



" ========  折叠设置 ==========
set foldenable 				" 开始折叠
set foldmethod=syntax 		" 设置语法折叠
set foldcolumn=0 			" 设置折叠区域的宽度
setlocal foldlevel=1	 	" 设置折叠层数为



" ========  缩进设置 ==========
set tabstop=4             " tab size is 4 empty spaces
set shiftwidth=4		  " 每层缩进空格数为4
set smartindent           " 自动对齐
set expandtab  			  " TAB自动展开成空格



" ======== 搜索设置 ==========
set hlsearch             	" highlight search text
set incsearch 				" 边搜索边出结果
set ignorecase 				" 大小写不敏感
set nowrapscan              " 禁止在搜索到文件两端时重新搜索

" ======== 文件设置 ==========
set autochdir " 自动切换到文件所在文件夹
set autoread  " 自动重载
"set nobackup  " 覆盖文件时不备份


" ======== UltiSnips 设置 ========
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsSnippetsDir = '~/.vim/bundle/UltiSnips/UltiSnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsEditSplit = 'horizontal'



set rtp+=~/.vim/bundle/vundle/
call vundle#rc()




" ========================================== "
"                插件管理设置  
" =========================================="

" --- Vundle --- "
" let Vundle manage Vundle, required!
Bundle 'gmarik/vundle'


" #########  my plugin bundle here  ######## "

" --- UltiSnips --- "
Bundle 'UltiSnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" --- NERDTree --- "
Bundle 'scrooloose/nerdtree'
" 设置快捷键 F4 打开 NERDTree
nnoremap <silent> <F4> :NERDTree<CR>

Bundle 'Lokaltog/vim-powerline'
Bundle 'https://github.com/kien/ctrlp.vim'

" --- EasyMotion --- "
Bundle 'EasyMotion'
let g:EasyMotion_leader_key = '\\'

" --- Zen Coding --- "
Bundle 'mattn/emmet-vim'
let g:user_emmet_leader_key='<C-Z>'  " 设定触发键为 Ctrl-Z

Bundle 'https://github.com/Shougo/neocomplcache.vim'
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 1  " first candidate automatically  

Bundle 'vim-multiple-cursors'

Bundle 'https://github.com/uguu-org/vim-matrix-screensaver'
Bundle 'marvim'


" Bundle 'git://github.com/tpope/vim-surround.git'
" Bundle 'delimitMate'    "引号,括号自动补全插件
" Bundle 'JavaScript-syntax'
" Bundle 'altercation/vim-colors-solarized'


" Brief help
" ===== Examples =====
" original repos on GitHub
" Bundle 'tpope/vim-fugitive'
"
" vim-scripts repos
" Bundle 'L9'
"
" non-GitHub repos
" Bundle 'git://git.wincent.com/command-t.git'
"
" Git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

filetype plugin indent on     " required!



" ========= 让 VIM 启动时自动打开上次开启的文件 =========
autocmd VimLeave * nested if (!isdirectory($HOME . "/.vim")) |
    \ call mkdir($HOME . "/.vim") |
    \ endif |
    \ execute "mksession! " . $HOME . "/.vim/Session.vim"

autocmd VimEnter * nested if argc() == 0 && filereadable($HOME . "/.vim/Session.vim") |
    \ execute "source " . $HOME . "/.vim/Session.vim"






