"===== prepare plugins START =====
filetype plugin indent off
syntax off
"set rtp+=$VIM/vimfiles/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'easymotion/vim-easymotion'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'mhinz/vim-startify'
Plugin 'vim-scripts/SearchComplete'
Plugin 'majutsushi/tagbar'
Plugin 'miyakogi/conoline.vim'
Plugin 'NewProggie/NewProggie-Color-Scheme'
Plugin 'crusoexia/vim-monokai'
call vundle#end()
filetype plugin indent on
syntax on
"===== prepare plugins END =====

set nu
set so=2
set switchbuf+=usetab,newtab
set tabstop=2 shiftwidth=2 expandtab
set hlsearch
set cst
set t_Co=256
set timeout timeoutlen=50
set nobackup
set noswapfile
colo desert
if has("gui_running")
    set lines=47 columns=190
    set guifont=Consolas:h14:cANSI
    set guioptions-=m "menu bar
    set guioptions-=T "toolbar
    set guioptions-=r "scrollbar
endif

nmap j gj
nmap k gk
nnoremap <Space> <C-d>
nnoremap <S-Space> <C-u>
vnoremap <Space> <C-d>
vnoremap <S-Space> <C-u>
nmap <Esc>j <C-w>j<C-w>_
nmap <Esc>k <C-w>k<C-w>_
nmap <Esc>h <C-w>h<C-w>_
nmap <Esc>l <C-w>l<C-w>_
nnoremap <Esc>, <C-w><
nnoremap <Esc>. <C-w>>
map <Esc>q <C-w>q

" append ; to end of line
imap <Esc>; <Esc>A;

" jump to end of line
imap <Esc>n <Esc>A

" append { to end of line
" imap <A-[> <Esc>A<Space>{

" move left
imap <Esc>h <Esc>i

" move down
imap <Esc>j <Esc>ja

" move up
imap <Esc>k <Esc>ka

" move right
imap <Esc>l <Esc>la

" new line
" imap <Esc>o <Esc>o

" append ; to end of line
nmap <Esc>; <Esc>A;

" append { to end of line
nmap <Esc>[ <Esc>A<Space>{

nmap <Esc>left <C-o>
nmap <Esc>right <C-i>


" auto save session
" au VimLeavePre * if v:this_session != '' | exec "mks! " . v:this_session | endif

"==================== easymotion ====================
let mapleader=","
nmap f <Plug>(easymotion-s)
vmap f <Plug>(easymotion-s)
nmap F <Plug>(easymotion-s)
vmap F <Plug>(easymotion-s)

"==================== ctrlp ====================
" map <F5> :CtrlPCurWD<CR>
" let g:ctrlp_switch_buffer = 'Et'

"==================== airline ====================
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#tabline#close_symbol='X'
let g:airline#extensions#default#layout = [
  \ [ 'x', 'b', 'c' ],
  \ [ 'y', 'z' ]
  \ ]
let g:airline_section_z = '%l,%c | %L'
let g:airline#extensions#tabline#enabled = 1

"==================== tagbar ====================
"let g:tagbar_left = 1
" nmap <F8> :TagbarToggle<CR>

"==================== conoline ====================
let g:conoline_auto_enable = 1

