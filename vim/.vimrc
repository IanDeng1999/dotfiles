" 显示行号 + 相对行号
set number
set relativenumber

" 高亮当前行
set cursorline

" 启用鼠标
set mouse=a

" 搜索配置
set ignorecase
set smartcase
set incsearch
set hlsearch

" 自动缩进
set autoindent
set smartindent

" Tab 宽度 2 个空格
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" 自动换行
set wrap

" 显示隐藏字符
set list
set listchars=tab:→\ ,trail:·

" 编码统一 UTF-8
set encoding=utf-8
set fileencoding=utf-8

" 语法高亮
syntax enable
set background=dark

" 常驻状态栏
set laststatus=2
set cmdheight=1

" 退出前确认保存
set confirm

" 真彩色
set termguicolors

" 关闭备份、交换文件
set nobackup
set nowritebackup
set noswapfile

" 命令历史
set history=1000

" 命令行补全
set wildmenu
set wildmode=longest,list

" 上下预留行数
set scrolloff=5
set sidescrolloff=5