" Vundle stuff!
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'simnalamburt/vim-mundo'
Plugin 'chrisbra/Recover.vim' " show a diff when recovering a buffer 

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set pastetoggle=<F2>
nnoremap <F5> :MundoToggle<CR>

if has("mouse")
	set mouse=a
endif

if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

if &term =~ '^screen'
	" tumx knows the extended mouse mode
	set ttymouse=xterm2
endif

syntax on
set number
set clipboard=unnamed " Use system clipboard with MacVim
set updatetime=250 " Update git gutter faster
