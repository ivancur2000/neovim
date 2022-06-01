call plug#begin('~/AppData/Local/nvim/plugged')

"scheme coolor  
Plug 'joshdick/onedark.vim' 
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim'
"start page
Plug 'mhinz/vim-startify'
"search file
Plug 'easymotion/vim-easymotion'
"coolor editor
Plug 'KabbAmine/vCoolor.vim'
"icons for vim
Plug 'ryanoasis/vim-devicons'
"file explorer
Plug 'scrooloose/nerdtree'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim', 
"integrtion javascript, jsx, typescript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'jelera/vim-javascript-syntax'
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
"navigation file
Plug 'christoomey/vim-tmux-navigator'
"bar airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"integration html, jsx
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/tagalong.vim'
"snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"code format
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentLine'
Plug 'romainl/vim-cool'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'eslint/eslint'
"git integration
Plug 'mhinz/vim-signify'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
"auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-syntastic/syntastic'

call plug#end()
