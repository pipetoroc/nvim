set number
set relativenumber
set numberwidth=4
set mouse=a
syntax on
syntax enable
set showcmd 
set ruler
set encoding=utf-8
set showmatch
set cursorline
set hidden "COC
set termguicolors
set clipboard+=unnamedplus
set scrolloff=8
set wildmenu
"set nowrap
set sw=2

"Options tabs
set smarttab
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab

"Indentation
set smartindent
set autoindent
set breakindent

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
so ~/.vim/maps.vim

let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox
let g:airline_theme='gruvbox'
highlight Normal ctermbg=NONE
set laststatus=2
set noshowmode

lua require'colorizer'.setup()
