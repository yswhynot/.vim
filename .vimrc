execute pathogen#infect()

filetype indent plugin on
syntax on
set ignorecase
set smartcase
set mouse=a
set number
set shiftwidth=4
set tabstop=4
set encoding=utf-8

" key mappings
nmap <F2> :NERDTreeToggle<CR>
nmap <F9> :TagbarToggle<CR>

" plugin settings
let NERDSpaceDelims=1
autocmd vimenter * NERDTree

colorscheme Monokai

