"scheme
colorscheme onedark
" highlight Normal ctermbg=none guibg=none
" highlight NonText ctermbg=none guibg=none
"easymotion
nmap <Leader>s <Plug>(easymotion-s2)
"vim-jsx-pretty
let g:vim_jsx_pretty_template_tags=['html', 'js', 'jsx', 'ts', 'tsx', 'php']
"nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1 
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = ['^node_modules$']
"airline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|' 
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1
let g:airline_theme='onedark' 
"emmet
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \  'extends' : 'jsx',
    \  },
  \}
let g:user_emmet_leader_key=','
"identline
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']
let g:indentLine_char_list = [' ', '┊']
let g:indentLine_char_list = ['|', '¦']
"signify
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1
let g:CoolTotalMatches = 1
"tagbat ARREGLAR
nmap <Leader>t :TagbarToggle<CR>
"fzf
let g:fzf_preview_window = 'right:40%'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 0"
nnoremap <c-p> :Files<CR>
nnoremap <c-g> :GitFiles<CR>
nnoremap <c-s> :Lines<CR>
nnoremap <c-b> :Buffers<CR>
nnoremap <c-c> :Colors<CR>
"Coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nmap <F2> <Plug>(coc-rename)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
"syntasti
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"ultisnipts
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
"VCoolor
let g:vcoolor_map = '<Leader>bv'
let g:vcool_ins_rgb_map = '<Leader>br'		
let g:vcool_ins_hsl_map = '<Leader>bh'	
let g:vcool_ins_rgba_map = '<Leader>ba'
"Prettier
nmap <C-i> :Prettier<CR>
" Remap for rename current word
nmap <F2> <Plug>(coc-rename)
" floaterm 
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1

let g:floaterm_keymap_toggle = '<F3>'
let g:floaterm_keymap_next   = '<F5>;'
let g:floaterm_keymap_prev   = '<F6>'
let g:floaterm_keymap_new    = '<F4>'
