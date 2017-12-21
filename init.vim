call plug#begin('~/.config/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'moll/vim-bbye'
Plug 'cohama/lexima.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'hzchirs/vim-material'
Plug 'vim-syntastic/syntastic'
Plug 'carlitux/deoplete-ternjs' "{'do': 'npm install -g tern'} need to install as root
Plug 'dracula/vim'
Plug 'Chiel92/vim-autoformat'
call plug#end()
" neoplete
let g:deoplete#enable_at_startup = 1
set completeopt=longest,menuone
let g:deoplete#sources#go#gocode_binary = '~/projects/go/bin/gocode'

" supertab 
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabClosePreviewOnPopupClose = 1
let g:SuperTabContextDefaultCompletionType = "<c-n>"

" plugin indent
filetype plugin indent on
autocmd Filetype go setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype json setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
" line numbers
set nu "linenumbers
set relativenumber "relative

" colors
set background = "dark"
colorscheme vim-material
" color dracula
" let g:airline_theme='dracula'
let g:airline_theme='material'
set termguicolors

" rows and columns
set cursorline
hi CursorLine term=bold cterm=bold guibg=#304c60
let g:indentLine_setColor = 0

"vim-bbye bufdelete
nnoremap <Leader>q :Bdelete<CR>

" search
set ignorecase
set hlsearch
" splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"scroll offset
set so=999
set nocompatible

"backgroud_color_erase
set t_ut=

"nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"hacks
set backspace=2 " backspace hack
"ctrlp
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 400
set wildignore+=*/builds/*,*/build/*,*.so,*.swp,*.zip     

" lexima
let g:lexima_enable_basic_rules = 1
let g:lexima_enambe_new_line_rules = 1

" syntastic
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_go_checkers = ['gofmt']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
