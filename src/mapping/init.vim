let mapleader=" "

"save document
nmap <Leader>w :w<CR>
nmap <Leader>wq :wq<CR>
"exit document
nmap <Leader>q :q<CR>
nmap <Leader>Q :q!<CR>
"split screen
nmap <Leader>/ :sp<CR>
nmap <Leader>\ :vs<CR>
"buffers
nmap <Leader>l :bn<CR>
nmap <Leader>h :bp<CR>
nmap <Leader>d :bd<CR>
"calcel arrows
noremap <up> <nop>
noremap <down> <nop> 
noremap <left> <nop>
noremap <right> <nop> 
"resize panel
noremap <silent> <right> :vertical resize +5 <CR> 
noremap <silent> <left> :vertical resize -5 <CR> 
noremap <silent> <up> :resize +5 <CR>
noremap <silent> <down> :resize -5 <CR>
"open vim config
noremap <F1> :e $MYVIMRC<CR>
"open terminal
function! OpenTerminal()
  "move to right most buffer
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&bufType", "not found")

  if bufType == "terminal"
    "close existing terminal
    execute "q"
  else
    "open terminal
    execute "vsp term://powershell"

    "turn off numbers
    execute "set nonu"  
    execute "set nornu"
    
    "toggle insert on enter/exit
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    "set maps inside terminal buffer
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\> <C-\\> <C-\\><C-n>"

    startinsert!
  endif
endfunction
nnoremap <C-t> :call OpenTerminal()<CR>
"moving text
vnoremap <Leader>j :m '>+1<CR>gv=gv
vnoremap <Leader>k :m '<-2<CR>gv=gv
nnoremap <Leader>j :m .+1<CR>==
nnoremap <Leader>k :m .-2<CR>==
"faster scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>
"esc
inoremap jj <ESC>

