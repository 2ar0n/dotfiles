set number
syntax on


filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" for faster git gutter updates
set updatetime=100

" don't forget to run :PlugInstall after adding
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'machakann/vim-highlightedyank'
Plug 'itchyny/lightline.vim'
call plug#end()

map <C-n> :NERDTreeToggle<CR>
