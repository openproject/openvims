if has("win32")
    set nocompatible
    source $VIMRUNTIME/vimrc_example.vim
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif

call pathogen#infect()
syntax on
filetype plugin indent on

" basic config
set nu
set hlsearch
set incsearch
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=n

syntax enable
set background=dark
colorscheme solarized

" tags settting
set tags=tags;
set autochdir

let NERDTreeChristmasTree=1
let NERDTreeMouseMode=2
let NERDTreeHighlightCursorline=0

let NERDCompactSexyComs=1
let NERDSpaceDelims=1

map <F2> :silent! NERDTreeToggle<CR>
map <F8> :silent! TagbarToggle<CR>
map <F9> :silent! FufCoverageFile<CR>

" 保存上次文件打开位置
map _u :call ID_search()<Bar>execute "/\\<" . g:word . "\\>"<CR>
map _n :n<Bar>execute "/\\<" . g:word . "\\>"<CR>
function ID_search()
    let g:word = expand("<cword>")
    let x = system("lid --key=none ". g:word)
    let x = substitute(x, "\n", " ", "g")
    execute "next " . x
endfun
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
autocmd BufWritePre * :%s/\s\+$//e

" 配色方案
if has("gui_running")
    colo solarized
else
    colo desert
endif
"--------------------------------------------------
" Name: solarized
" Description: 一个漂亮的配色方案
" Git: https://github.com/altercation/vim-colors-solarized.git
"--------------------------------------------------
let g:solarized_termcolors=256
let g:solarized_termtrans=0
let g:solarized_contrast="normal"
let g:solarized_visibility="high"
let g:solarized_underline=1
let g:solarized_italic=0
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_diffmode="normal"
let g:solarized_hitrail=0
let g:solarized_menu=1

" Airline
set laststatus=2
set noshowmode
set t_Co=256
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" 设置alt+左右键切换标签
nnoremap <silent> <M-left> gT
nnoremap <silent> <M-right> gt
" 设置ctrl+左右键切换缓冲区
nnoremap <silent> <C-left> :bNext<cr>
nnoremap <silent> <C-right> :bnext<cr>

" start screen 自定义Header
let g:startify_custom_header = [
    \'   *********************************************',
    \'   *****************OPEN VIMS*******************',
    \'   *************Author Hy JayFeng***************',
    \'   ************email:673592063@qq.com***********',
    \'   *********************************************',
    \'']
