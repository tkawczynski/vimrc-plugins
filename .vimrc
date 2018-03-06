syntax on
colorscheme desert

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Theme plugin
Plugin 'bf4/vim-dark_eyes'
Plugin 'romainl/flattened'

" Minimap plugin
Plugin 'severin-lemaignan/vim-minimap'
" Status bar plugin
Plugin 'vim-airline/vim-airline'
" File Explorer plugin
Plugin 'scrooloose/nerdtree'
" File fuzzy-lookup
Plugin 'ctrlpvim/ctrlp.vim'
" Syntax checker
Plugin 'scrooloose/syntastic'
" Autocompletion plugin
Plugin 'Valloric/YouCompleteMe'
" Additional languages plugins
Plugin 'rust-lang/rust.vim'
Plugin 'keith/swift.vim'
Plugin 'cfdrake/vim-carthage'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" General Vim configuration
autocmd BufEnter * lcd %:p:h " configure Vim so that it sets the working directory to the current file's directory

" Airline configuration
set noshowmode

" NERDTree configuration
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinSize=60

" Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']
