"vim-plug
call plug#begin('~/vimfiles/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'tomasiser/vim-code-dark'
Plug 'badacadabra/vim-archery'
Plug 'whatyouhide/vim-gotham'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
"Plug 'ap/vim-buftabline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/npm.vim'
Plug 'kabbamine/gulp-vim'
Plug 'mxw/vim-jsx'
Plug 'crusoexia/vim-monokai'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'powerline/fonts'
Plug 'geekjuice/vim-mocha'
Plug 'vim-scripts/BufOnly.vim'
Plug 'quabug/vim-gdscript'
call plug#end()

"indentation
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set backspace=indent,eol,start


autocmd Filetype cs setlocal ts=4 sw=4 expandtab softtabstop=4

"misc
set number
set showcmd
set cursorline
filetype plugin indent on
set wildmenu
set lazyredraw
set showmatch
set hidden

"searching
set incsearch
set hlsearch

"colors
syntax enable
colorscheme onedark
set background=dark
let g:airlinetheme='onedark'
" set guifont=Source\ Code\ Pro\ for\ Powerline:h11
" set guifont=Hack\ Regular
"set guifont=DejaVu\ Sans\ Mono:h10:b
" set guifont=Fira_Mono_for_Powerline:h11
"set guifont=Consolas:h11
" set guifont=Roboto_Mono_for_Powerline:h11
set guifont=DejaVu_Sans_Mono_for_Powerline:h11

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#formatter = "unique_tail_improved"
let g:airline#extensions#tabline#buffer_idx_mode = 0
let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline_left_sep='>'
"let g:airline_right_sep='<'
let g:airline_powerline_fonts = 1
set encoding=utf-8
"gvim
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

"mocha
nnoremap <Leader>t :!mocha %<CR>

"ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
"set autochdir
let g:buftabline_numbers = 1
"maps
map ,nt :NERDTree<CR>
nnoremap <tab> <C-w>w
inoremap jj <esc>
nnoremap <C-b> :Gulp build<CR>
noremap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

nnoremap <Leader>c :BufOnly<CR>
nnoremap <C-tab> :bn<CR>
nnoremap <C-S-tab> :bp<CR>

nnoremap <leader>q :bp<cr>:bd #<cr>


