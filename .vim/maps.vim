let mapleader =" "

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader>wq :wq<CR>
imap kj <Esc>
vmap kj <Esc>
nnoremap <leader> :noh<CR>

"split resize
nnoremap <leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <Leader>k :m .-2<CR>==
nnoremap <Leader>j :m .+1<CR>==

" faster scrolling
nnoremap<C-j> 10<C-E>
nnoremap<C-k> 10<C-Y>

" run current file
nnoremap <Leader>x :!node %<cr>

"NerdTree
nnoremap <leader>n :NERDTreeFocus<CR>

"Tmux navigation
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <leader><C-l> :TmuxNavigateRight<cr>

" buffers navigation
map <Leader>h :bprevious<cr>
map <Leader>l :bnext<cr>
map <Leader>ob :buffers<cr>

"FZF
map <Leader>p :Files<CR>
map <Leader>ag :Ag<CR>

"Función abrir terminal en Vim
set splitright
function! OpenTerminal()
  " move to right most buffer
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == "terminal"
    " close existing terminal
    execute "q"
  else
    " open terminal
    execute "vsp term://zsh"

    " turn off numbers
    execute "set nonu"
    execute "set nornu"

    " toggle insert on enter/exit
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " set maps inside terminal buffer
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    startinsert!
  endif
endfunction
nnoremap <C-t> :call OpenTerminal()<CR>
