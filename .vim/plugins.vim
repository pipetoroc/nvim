call plug#begin('~/.vim/plugged')

"Themes
Plug 'morhetz/gruvbox'
Plug 'safv12/andromeda.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'chriskempson/base16-vim'
Plug 'phanviet/vim-monokai-pro'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

"NerdTree
Plug 'preservim/nerdtree' 

"Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

"Syntax
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'ap/vim-css-color'

"Tmux
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

"Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdcommenter'

call plug#end()
