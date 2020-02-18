" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

Plug 'NLKNguyen/papercolor-theme' " 主题
Plug 'morhetz/gruvbox'            " 主题

Plug 'scrooloose/nerdtree'       " 文件目录
Plug 'Xuyuanp/nerdtree-git-plugin' " 文件目录中显示git状态
Plug 'tpope/vim-vinegar'

Plug 'voldikss/vim-floaterm'     " 在浮窗中打开终端
Plug 'itchyny/lightline.vim'     " 超强的状态栏
Plug 'godlygeek/tabular'         " 代码对齐
Plug 'junegunn/vim-easy-align'   " 代码对齐
Plug 'easymotion/vim-easymotion' " 跳转功能增加
Plug 'tpope/vim-surround'        " 快速给词加环绕符号,例如单引号/双引号/括号/成对标签等
Plug 'tpope/vim-repeat'          " 重复一个插件的操作, 支持surround.vim
Plug 'majutsushi/tagbar'         " 显示代码大纲

Plug 'tpope/vim-fugitive'        " 集成git
Plug 'airblade/vim-gitgutter'    " 在行首显示git状态

Plug 'octol/vim-cpp-enhanced-highlight' " C++ 增加高亮，可高亮标准库关键字
Plug 'mg979/vim-visual-multi'   " 多光标同时编辑
Plug 'w0rp/ale'                 " 代码静态检查

Plug 'Yggdroot/LeaderF', { 'do': './install.sh' } " used for locating files, buffers, mrus, ctags, gtags, etc. in large project.

" 自动补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'
" Plug 'ncm2/ncm2-go'   " golang 补全
" Plug 'ncm2/ncm2-jedi' " python 补全
" Plug 'ncm2/ncm2-bufword'
" Plug 'ncm2/ncm2-path'

" 快速查找/打开文件
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Language Server Protocol (LSP)
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" Go lang
Plug 'fatih/vim-go'
Plug 'nsf/gocode'
Plug 'vim-syntastic/syntastic'
Plug 'vim-jp/vim-go-extra'
                                                                                                                                                                                                                                  [125/1830]
" All of your Plugins must be added before the following line
call plug#end()            " required


" ============================================================================
" ============================================================================

" 一般性设置 {
    filetype plugin indent on " 检测文件的类型
    set bs=indent,eol,start   " allow backspacing over everything in insert mode
    set nocompatible          " 去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
    set helplang=cn           " 使用中文帮助文档
    set history=1000          " 记录历史的行数
    set autoread              " 当文件在外部被修改，自动更新该文件
    set nobackup              " 关闭修改文件时产生备份
    set nowritebackup         " 关闭修改文件时产生备份
    set hidden                "允许在有未保存的修改时切换缓冲区
    "set list

    " 设置VIM内部编码，文件编码
    set nobomb      "去掉utf-8 BOM
    "set bomb       "保留utf-8 BOM
    "Vim 中当前编辑的文件的字符编码方式，Vim 保存文件时也会将文件保存为这种字符编码方式 (不管是否新文件都如此)。
    set fileencoding=utf-8

    " Vim 启动时会按照它所列出的字符编码方式逐一探测即将打开的文件的字符编码方式，并且将 fileencoding 设置为最终探测到的字符编码方式。
    set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

    "Vim 内部使用的字符编码方式，包括 Vim 的 buffer (缓冲区)、菜单文本、消息文本等。
    "set encoding=utf-8

    "set langmenu=zh_CN.UTF-8 "language message zh_CN.UTF-8
"}

    set incsearch   "查询时非常方便，如要查找book单词，当输入到/b时，会自动找到第一
                    "个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的单词，依
                    "次类推，进行查找时，使用此设置会快速找到答案，当你找要匹配的单词
                    "时，别忘记回车
    set ignorecase "Ignore case when searching
    set smartcase  "当被搜索的文字包含大写字符，不使用 'ignorecase' 选项，只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用
"}

    " 代码折叠
    set fdm=manual
    " [foldmethod] 一共有六种
    " manual        手动建立折叠
    " indent        相同缩进距离的行构成折叠
    " expr          用表达式来定义折叠，'foldexpr' 给出每行的折叠级别
    " marker        标志用于指定折叠
    " syntax        语法高亮项目指定折叠
    " diff          没有改变的文本构成折叠

    syntax on           "语法高亮度显示
    set showmatch       "类似当输入一个左括号时会匹配相应的那个右括号
    set number          "显示行号
    set relativenumber  " 显示相对行号
        set ruler           "在编辑过程中，在右下角显示光标位置的状态行
    set hlsearch        "高亮显示搜索结果
    set cursorline      "突出显示当前行

    "colorscheme gruvbox "配色方案
    colorscheme PaperColor
    set termguicolors
    set background=dark
    "set background=light

    " 用X,Y轴的辅助线定位光标 cross cursor position
    set cursorline
    "set cursorcolumn
    "
    set tabstop=4               " 用4个空格代替Tab
    set shiftwidth=4            "设置当行之间交错时使用4个空格
    set smarttab
    set expandtab
    set autoindent              "自动缩进

    " 自动换行
    set lbr                     "linebreak
    set wrap                    "Wrap lines

    set laststatus=2            "总是显示状态栏

    if has("termguicolors")
        " fix bug for vim
        set t_8f=^[[38;2;%lu;%lu;%lum
        set t_8b=^[[48;2;%lu;%lu;%lum
        " enable true color
        set termguicolors
    endif
"}

" syntax for proto {
    augroup filetype
        au! BufRead,BufNewFile *.proto setfiletype proto
    augroup end
"}

" for sneak {
    let g:sneak#label = 1
"}

" for ack/Ag {
    if executable('ag')
      let g:ackprg = 'ag --vimgrep -t -S'
    endif
    "使用ack的空白搜索，即不添加任何参数时对光标下的单词进行搜索，默认值为1，表示开启，置0以后使用空白搜索将返回错误信息
    let g:ack_use_cword_for_empty_search = 1
    let g:ack_default_options = " -s -H --column"
" }

" vim-go settings {
    let g:go_fmt_command = "goimports"
    let g:go_code_completion_enabled = 0

    let g:ale_linters = {
        \ 'go': ['gopls'],
        \}
" }


" ncm2 {
    " enable ncm2 for all buffers
"    autocmd BufEnter * call ncm2#enable_for_buffer()

    " IMPORTANT: :help Ncm2PopupOpen for more information
"    set completeopt=noinsert,menuone,noselect
" }

" 快捷键设置 {
    let mapleader=" "
    " fzf 函数列表
    noremap <leader>o :LeaderfFunction<CR>
    " 检查文件是否被其他程序修改
    nmap <F5> :checkt<CR>
    " Tagbar的快捷键
    nmap <F8> :TagbarToggle<CR>
    " 打开quickfix窗口的快捷键
    nmap <F9> :cw<CR>
    " 关闭quickfix窗口的快捷键
    nmap <F10> :ccl<CR>
    " 打开内嵌终端
    nmap <c-l> :terminal<CR>

    " 在内嵌终端通过ESC键回到命令模式
    :tnoremap <Esc> <C-\><C-n>

    " for fzf
    nnoremap <silent> <c-p> :FZF<CR>

    " 按空格对齐
    nmap <leader>= :Tab /
    " 切换打开文件树
    nmap <leader>e :NERDTreeToggle <CR>
    " 打开当前文件所在目录
    nmap <leader>p :Ex <CR>

    " 快速查找光标所在的文本
    nmap <leader>f <Plug>LeaderfRgCwordLiteralNoBoundary<CR>
    " 快速查找选中文本
    vmap <leader>v <Plug>LeaderfRgVisualLiteralNoBoundary<CR>

    " 重复上一次的查找
    nmap <leader>r :LeaderfRgRecall <CR>
    " 查找
    nmap <leader>gi :LeaderfRgInteractive<CR>
    
    nnoremap <silent> <Leader>l :LeaderfBuffer<CR>

    " 切换paste模式
    " nnoremap <leader>p :set invpaste paste<CR>
    " imap <leader>p <C-O>:set invpaste paste<CR>
    " set pastetoggle=<leader>p

    " 在浮窗中打开终端
    noremap  <silent> <F12>           :FloatermToggle<CR>i
    noremap! <silent> <F12>           <Esc>:FloatermToggle<CR>i
    tnoremap <silent> <F12>           <C-\><C-n>:FloatermToggle<CR>
" }
