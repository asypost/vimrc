set nocompatible              " be iMproved, required
filetype off                  " required

set number
syntax on
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set expandtab
set mouse=a
set showcmd

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
hi Search term=reverse ctermbg=Yellow guibg=Yellow

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vimim
Plugin 'vimim'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rust-lang/rust.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Indent configuration
let g:indentLine_char = "┆"
let g:indentLine_enabled = 1
let g:autopep8_disable_show_diff=1

" Plugin nerdtree settings.
map <C-b> :NERDTreeToggle<CR>
let NERDTreeChDirMode=1
" let NERDTreeShowBookmarks=1
let NERDTreeWinSize=25
" let NERDTreeShowHidden=1
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '\.git$']
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeNodeDelimiter = "\t"

" Plugin airline settings
set t_Co=256
set lazyredraw
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme="luna"

" 设置YouCompleteMe
let g:ycm_server_python_interpreter = 'python3'

" 设置syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_error_symbol='☢'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" 设置切换Buffer快捷键"
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>

" 设置关闭当前buffer
nnoremap <C-D> :bp\|bd #<CR>
