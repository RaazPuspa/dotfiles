filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'w0rp/ale'
Plugin 'morhetz/gruvbox'
Plugin 'tomtom/tlib_vim'
Plugin 'SirVer/ultisnips'
Plugin 'tmhedberg/matchit'
Plugin 'tpope/vim-vinegar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'Townk/vim-autoclose'
Plugin 'StanAngeloff/php.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'Chiel92/vim-autoformat'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'terryma/vim-multiple-cursors'

Plugin 'tobyS/vmustache'
Plugin 'tobyS/pdv'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

