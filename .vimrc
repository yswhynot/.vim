execute pathogen#infect()

filetype indent plugin on
syntax on
set ignorecase
set smartcase
set mouse=a
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set tags=tags

" key mappings
nmap <F2> :NERDTreeToggle<CR>
nmap <F9> :TagbarToggle<CR>

" plugin settings
let NERDSpaceDelims=1
autocmd vimenter * NERDTree

colorscheme Monokai

" autohighlights
autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
highlight IncSearch guibg=darkgray ctermbg=darkgray term=underline
