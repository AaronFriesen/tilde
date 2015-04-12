call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
set relativenumber
set expandtab
set autoindent
set ruler
set wildmode=longest,list
let $BASH_ENV = "~/.bash_aliases"
set wildignore+=.hg,.git,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest
set wildignore+=.DS_STORE
set wildignore+=*.pyc,*.class
set wildignore+=*.zip,*.swp,*.so
set noswapfile
set cursorline
set mouse=a
set incsearch
set ignorecase
set smartcase
set hlsearch
set laststatus=2
set showtabline=2
set noshowmode
set encoding=utf-8


highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

au BufNewFile,BufRead *.bash_aliases set filetype=sh
au BufNewFile,BufRead *.sc set filetype=scala
au BufNewFile,BufRead *.js set tabstop=2
au BufNewFile,BufRead *.js set shiftwidth=2
au BufNewFile,BufRead *.java set tabstop=4
au BufNewFile,BufRead *.java set shiftwidth=4
au BufNewFile,BufRead *.tex nmap \be o\begin{enumerate}<CR>\end{enumerate}<ESC>O<TAB>
au BufNewFile,BufRead *.tex nmap \bi o\begin{itemize}<CR>\end{itemize}<ESC>O<TAB>
au BufNewFile,BufRead *.tex nmap \B a \textbf{
au BufNewFile,BufRead *.tex nmap \U a \underline{
au BufNewFile,BufRead *.tex nmap \I a \texit{
au BufNewFile,BufRead *.tex nmap \T a {\tt 
au BufRead *.tex AutoCloseOff

nnoremap t gt
nmap j gj
nmap k gk
nmap \f :nohlsearch<CR>
nmap \k :retab<CR> :%s/\s\+$//g<CR>

nnoremap <S-t> gT
nmap <C-T> :tabe<CR>
nmap <C-e> <C-w>n<C-w>L
nmap <C-c> :SyntasticCheck<CR>
nmap <C-x> :SyntasticReset<CR>
nmap <BS> hxi
nmap <SPACE> i<SPACE><ESC>l
nmap <CR> geldwi<CR>

highlight Pmenu ctermfg=blue ctermbg=black

let g:syntastic_java_checkers = ["javac", "checkstyle"]
let g:syntastic_java_checkstyle_classpath = "~/bin/res/checkstyle-6.0.jar"
let g:syntastic_java_checkstyle_conf_file = "~/bin/res/cs1331-checkstyle.xml"
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { "mode": "passive",
                               \ "active_filetypes": [],
                               \ "passive_filetypes": [] }
let g:syntastic_enable_signs = 1
let g:Powerline_symbols = 'fancy'

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
