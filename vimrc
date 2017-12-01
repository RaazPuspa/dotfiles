set nocompatible

"------------------PLUGINS----------------------"
so ~/.vim/plugins.vim

"-------------------SYNTAX----------------------"
syntax on
syntax enable

"---------------GENERAL-SETTING-----------------"
"---------------------TABS----------------------"
set list                                        " useful to see difference between tab and spaces
set smarttab                                    " a <tab> is an indent inserts 'shiftwidth' spaces
set expandtab                                   " set <tab> to spaces in Insert mode
set tabstop=4                                   " number of spaces a <tab> in text stands for
set autoindent                                  " auto indentation
set smartindent                                 " do clever auto indentation
set shiftwidth=4                                " number of spaces used for each step of indent
set softtabstop=4                               " number of spaces to insert for a <tab>
autocmd Filetype php setlocal ts=4 sts=4 sw=4
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

"--------------------BACKUP---------------------"
set backup                                      " enable backup

"--------------------BUFFER---------------------"
set hidden                                      " don't unload a buffer when no longer show in window

"--------------------SEARCH---------------------"
set nospell                                     " disable spell correction
set hlsearch                                    " highlight search
set wildmenu                                    " command line completion show a list of matches
set gdefault                                    " apply substitution globally on lines
set showmatch                                   ""
set smartcase                                   "
set ignorecase                                  " use case insensitive search

"--------------------LINES----------------------"
set nowrap                                      " don't wrap long lines
set textwidth=80                                " set maximum width of text that is being inserted
set colorcolumn=81                              " show a colored column at 80

"---------------------FOLD---------------------"
set foldenable                                  " set to display all folds open
set foldlevel=1                                 " set fold levels
set foldcolumn=1                                " set width of folds
set foldminlines=1
set foldlevelstart=1
set foldmethod=indent                           " set type of fold

"---------------------MISC---------------------"
set remap                                       " recognize mappings in mapped keys
set number                                      " set line numbers to show
set notitle                                     " disable file based title for vim window
set mouse=""                                    " disable mouse for all modes
set undofile                                    " automatically save and restore undo history
set incsearch                                   " show match for partly typed search command
set mousehide                                   " hide mouse for all modes
set scroll=11                                   " number of lines to scroll for Ctrl+U and Ctrl+D
set showmatch                                   " when inserting bracket, briefly jump to its match
set lazyredraw                                  " don't draw while executing macros
set splitbelow                                  " create new split window below the current one
set splitright                                  " create new split window right of the current one
set history=100                                 " set number of command line history to remember
set scrolloff=3                                 " minimal number of screen lines to keep above/below the cursor
set autowriteall                                " automatically write the file when switching buffers
set iskeyword-=.                                " '.' is an end of word designator
set nocompatible                                " don't behave very vi compatible
set nocursorline                                " no cursor line
set scrolljump=5                                " lines to scroll when cursor leaves screen
set synmaxcol=80                                "
set conceallevel=0                              "
set encoding=utf-8                              " set character encoding
set wildignorecase                              " ignore case when completing file names
set shell=/bin/bash                             " set bash as shell script runner for vim
set background=dark                             " set dark background
set undolevels=1000                             " over 1000 levels of undo
set updatecount=200                             " number of characters typed to cause a swap file update
set updatetime=4000                             " time in ms after which swap will be updated
set complete=.,w,b,u                            " set our desired autocomplete matching
set concealcursor=""                            "
set undoreload=10000                            " maximum number of lines to save for undo on a buffer reload
set fillchars+=vert:\                           " remove ugly | in split
set shortmess=filmnrxoOtT                       " show short message to avoid hit enter
set wildmode=list:longest                       " specifies how command line completion works
set whichwrap=b,s,h,l,<,>,[,]                   " backspace and cursor keys wrap too
set backspace=indent,eol,start                  " smart backspace, behave like other editors
set undodir=~/.vim/tmp/undo,/tmp                " set vim undo directory
set viminfo+=n~/.vim/tmp/viminfo                " put viminfo inside .vim/tmp
set noerrorbells visualbell t_vb=               " no damn bells
set directory=~/.vim/tmp/swap,/tmp              " directory for vim swap
set backupdir=~/.vim/tmp/backup,/tmp            " set backup directory
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.  " highlight problematic whitespace
set viewoptions=folds,options,cursor,unix,slash " better Unix/Windows compatibility
set wildignore=*.o,*.obj,*/.git/*,*/node_modules,*/vendor,*/bower_components,*/dist

"---------------------LEADER--------------------"
let mapleader = ','                             "set our leader to ','


"--------------------GUI-VIM--------------------"
if has('gui_running') " && !has('nvim')
    set guifont=Inconsolata\ for\ Powerline\ 12
    set guioptions -=L                          " Remove left-hand scroll bar
    set guioptions -=R                          " Remove left-hand scroll bar
    set guioptions -=T                          " Remove GUI toolbar
    set guioptions -=e                          " Remove GUI tabs
    set guioptions -=l                          " Remove left-hand scroll bar
    set guioptions -=m                          " Remove menubar
    set guioptions -=r                          " Remove right-hand scroll bar
else
    set t_Co=256                                " Set terminal color to 256
endif


"-------------------STATUSLINE------------------"
if has('statusline')
    set laststatus=2                            " Always have a status line
    set statusline=\ %<%f                       " Filename
    set statusline+=%w%h%m%r\                   " Options
    set statusline+=»\ %{&ff}/%Y\               " Filetype
    set statusline+=»\ %{getcwd()}\             " Current directory
    set statusline+=%=%l,%c%V\ %p%%             " Right aligned file navigation info
endif


"------------------COMMANDLINE------------------"
if has('cmdline_info')
    set ruler                                           " Shows current position below each window
    set showcmd                                         " Show command in the last line of the screen
    set showmode                                        " Show current mode in last line
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)  " A ruler on steroids
endif


"--------------------GROUPING-------------------"
" automatically source the vimrc file on save
augroup autosourcing
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup end


"-----------------PLUGIN-CONFIG-----------------"
"--------------------GRUVBOX--------------------"
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
let g:gruvbox_termcolors = 256

"---------------VIM-PHP-CS-FIXER----------------"
let g:php_cs_fixer_level = "psr2"

"-------------------CTRLP.VIM-------------------"
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git|.git|vendors'

"----------------VIM-AUTOFORMAT-----------------"
let g:autoformat_retab = 1
let g:autoformat_autoindent = 1
let g:autoformat_remove_trailing_spaces = 1

"----------------------PDV----------------------"
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>

"-------------------NERDTREE--------------------"
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_liststyle = 3
let NERDTreeDirArrows = 1
let NERDTreeMinimalUI = 1
let NERDTreeHijackNetrw = 0
let g:netrw_browse_split = 4
autocmd StdinReadPre * let s:std_in=1

" open a NERDTree automatically when vim starts up if no files were specified
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" open NERDTree automatically when vim starts up on opening a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

let g:NERDTreeSortOrder = ['\/$', '\.js$', '\.html$', '*', '\.swp$',  '\.bak$', '\~$']
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Staged"    : "+",
    \ "Untracked" : "%",
    \ "Renamed"   : "^",
    \ "Unmerged"  : "=",
    \ "Deleted"   : "x",
    \ "Dirty"     : "!",
    \ "Clean"     : "~",
    \ 'Ignored'   : ':',
    \ "Unknown"   : "?"
    \ }

"--------------------PHP.VIM--------------------"
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

"---------------VIM-PHP-NAMESPACE---------------"
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction

let g:php_namespace_sort_after_insert = 1
autocmd FileType php noremap <Leader>nu :call PhpInsertUse()<CR>
autocmd FileType php inoremap <Leader>nu <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>ne :call PhpExpandClass()<CR>
autocmd FileType php inoremap <Leader>ne <Esc>:call IPhpExpandClass()<CR>


"------------------MAPPINGS---------------------"
" call php format fixer
nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>

" nerdtree search
nmap <leader>fn :NERDTreeFind<CR>

" nerdtree toggle show
nmap <leader>a :NERDTreeToggle<CR>

" Quickly edit/reload the vimrc file
nmap <leader>ev :tabedit $MYVIMRC<CR>
nmap <leader>rv :source $MYVIMRC<CR>

" Quickly edit plugins file
nmap <leader>ep :tabedit ~/.vim/plugins.vim<CR>

" sort lines by their length
vmap <leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>

" Change Working Directory to that of the current file
cmap cd<CR> cd %:p:h<CR>
imap <C-S> <Esc>:cd %:p:h<CR>

" For when you forget to sudo
cmap w!! w !sudo tee % >/dev/null

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" toggle folds
nnoremap <space> za

" fold tags
nnoremap <leader>ft Vatzf

" split window switch bindings
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>

" laravel specific bindings
nmap <leader>lm :!php artisan make:
nmap <leader>ld :!php artisan migrate:refresh<CR>
nmap <leader>ls :!php artisan migrate:refresh --seed<CR>

" with j and k implement line up/down if its wrapped line too
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" disable arrow keys mapping
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" map gj to j and gk to k, easy to use
nnoremap j gj
nnoremap k gk

" map help keys to ESC than that goddamned help function
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" let ; do same as :
nnoremap ; :

" auto focus on losing focus
au FocusLost * :wa

" strip all trailing whitespace in the current file
nnoremap <leader>w :%s/\s\+$//<cr>:let @/=''<CR>

