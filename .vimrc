call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

" By setting both of these, I use hybrid-mode line numbers
set relativenumber
set number
set expandtab
set autoindent

" Horizontal line keeps track of my cursor
set ruler
set cursorline
set timeoutlen=300

" Mostly for :e autocompleting things
set wildmode=longest,list

" I think this is so I can :! mk and other aliases?
let $BASH_ENV = "~/.bash_aliases"

" Ignore things I would never want to open in vim.
set wildignore+=.hg,.git,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest
set wildignore+=.DS_STORE
set wildignore+=*.pyc,*.class
set wildignore+=*.zip,*.swp,*.so

" Get that crap outta here
set noswapfile

" For when I am lazy and want to actually use my mouse
set mouse=a

" Searching convenience
set incsearch
set ignorecase
set hlsearch
set smartcase

" Misc
set encoding=utf-8
set tabstop=4
set shiftwidth=4

" Because suddenly they changed how backspacing worked in 7.4
set backspace=2

" I think these are for powerline compatability?
set laststatus=2
set showtabline=2
set noshowmode

let mapleader = "\<Space>"

" Why is this not the default?
let java_highlight_functions=1
let java_highlight_all=1

" Highlight space at the end of lines red (as long as I'm not in insert mode)
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Syntax highlighting on nonstandard file extensions
au BufNewFile,BufRead *.bash_aliases set filetype=sh
au BufNewFile,BufRead *.sc set filetype=scala

" Tab spacing
au BufNewFile,BufRead *.js set tabstop=2
au BufNewFile,BufRead *.js set shiftwidth=2
au BufNewFile,BufRead *.java set tabstop=4
au BufNewFile,BufRead *.java set shiftwidth=4

" LaTeX commands I find useful
au BufNewFile,BufRead *.tex nmap <Leader>be o\begin{enumerate}<CR>\end{enumerate}<ESC>O<TAB>
au BufNewFile,BufRead *.tex nmap <Leader>bi o\begin{itemize}<CR>\end{itemize}<ESC>O<TAB>
au BufNewFile,BufRead *.tex nmap <Leader>B a \textbf{
au BufNewFile,BufRead *.tex nmap <Leader>U a \underline{
au BufNewFile,BufRead *.tex nmap <Leader>I a \texit{
au BufNewFile,BufRead *.tex nmap <Leader>T a {\tt 
au BufRead *.tex AutoCloseOff

" Move spaces, not lines
nnoremap j gj
nnoremap k gk

" Misc
nmap <Leader>h :nohlsearch<CR>
nmap <Leader>k :retab<CR> :%s/\s\+$//g<CR>
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>e <C-w>n<C-w>L
nnoremap <BS> hxi
nnoremap <CR> geldwi<CR>

" Tab functionality
nnoremap <C-T> :tabe<CR>
nnoremap t gt
nnoremap <S-t> gT


" Syntastic convenience
nnoremap <C-c> :SyntasticCheck<CR>
nnoremap <C-x> :SyntasticReset<CR>

highlight Pmenu ctermfg=blue ctermbg=black

" Separating options by program to keep the world a better place
let g:syntastic_java_checkers = ["javac", "checkstyle"]
let g:syntastic_java_checkstyle_classpath = "~/bin/res/checkstyle-6.0.jar"
let g:syntastic_java_checkstyle_conf_file = "~/bin/res/cs1331-checkstyle.xml"
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { "mode": "passive",
                               \ "active_filetypes": [],
                               \ "passive_filetypes": [] }
let g:syntastic_enable_signs = 1

let g:syntastic_scala_checkers = ["scalastyle"]
let g:syntastic_scala_scalastyle_jar = "~/bin/res/scalastyle_2.11-0.6.0-batch.jar"
let g:syntastic_scala_scalastyle_config_file = "~/bin/res/scalastyle_config-custom.xml"

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
