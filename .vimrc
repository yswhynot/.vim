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
set breakindent

" key mappings
nmap <F2> :NERDTreeToggle<CR>
nmap <F9> :TagbarToggle<CR>

" plugin settings
let NERDSpaceDelims=1
autocmd vimenter * NERDTree
let vim_markdown_preview_github=1


colorscheme Monokai

" autohighlights
autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
highlight IncSearch guibg=darkgray ctermbg=darkgray term=underline


" roslaunch xml file
if exists("b:current_syntax")
  finish
endif

runtime syntax/xml.vim

let s:current_syntax=b:current_syntax
unlet b:current_syntax

syntax include @YAML syntax/yaml.vim
syntax region ymlSnipInline matchgroup=rosparamTag start="\m<.\{-}rosparam.\{-}>" end="\m</.\{-}rosparam.\{-}>" contains=@YAML containedin=xmlEntity
hi link rosparamTag ModeMsg

let b:current_syntax=s:current_syntax


