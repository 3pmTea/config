"===== prepare plugins START =====
filetype plugin indent off
syntax off
set rtp+=$VIM/vimfiles/bundle/Vundle.vim
call vundle#begin()
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-airline/vim-airline'
Plugin 'easymotion/vim-easymotion'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'mhinz/vim-startify'
Plugin 'vim-scripts/SearchComplete'
Plugin 'pangloss/vim-javascript'
call vundle#end()
filetype plugin indent on
syntax on
"===== prepare plugins END =====

source $VIMRUNTIME/mswin.vim
behave mswin

set sessionoptions-=options
set sessionoptions-=winsize
set sessionoptions-=buffers
set nu
set rnu
color industry
set so=2
set switchbuf+=usetab,newtab
set tabstop=4 shiftwidth=4 expandtab
set nobackup
set noswapfile
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
nmap <A-j> <C-w>j<C-w>_
nmap <A-k> <C-w>k<C-w>_
nmap <A-h> <C-w>h<C-w>_
nmap <A-l> <C-w>l<C-w>_
map <A-q> <C-w>q
" map <C-K>r :execute "vimgrep /" . expand("<cword>") . "/j **/*" <Bar> cw<CR>

" append ; to end of line
imap <A-;> <Esc>A;

" append { to end of line
" imap <A-[> <Esc>A<Space>{

" move left
imap <A-h> <Esc>i

" move down
imap <A-j> <Esc>ja

" move up
imap <A-k> <Esc>ka

" move right
imap <A-l> <Esc>la

" new line
imap <A-o> <Esc>o

" append ; to end of line
nmap <A-;> <Esc>A;

" append { to end of line
nmap <A-[> <Esc>A<Space>{

nmap <A-left> <C-o>
nmap <A-right> <C-i>

if has("win32")
  " Open in Windows Explorer
    nnoremap <silent> <C-F4> :if expand("%:p:h") != "" \| exec "!start explorer.exe" expand("%:p:h:S") \| endif<CR>
  " Open SVN diff for current file
"    nnoremap <silent> <C-F5> :if expand("%:p") != "" \| exec "!start TortoiseProc.exe /command:diff /path:" . shellescape(expand("%:p")) . "/closeonend:0" \| endif<CR>
endif


" auto save session
" au VimLeavePre * if v:this_session != '' | exec "mks! " . v:this_session | endif

"==================== easymotion ====================
let mapleader=","
nmap f <Plug>(easymotion-s)
vmap f <Plug>(easymotion-s)
nmap F <Plug>(easymotion-s)
vmap F <Plug>(easymotion-s)

"==================== ctrlp ====================
map <F5> :CtrlPCurWD<CR>
" let g:ctrlp_cmd = 'CtrlP e:/int/server/lua'
" let g:ctrlp_switch_buffer = 'Et'

"==================== airline ====================
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#tabline#close_symbol='X'
let g:airline#extensions#default#layout = [
  \ [ 'x', 'b', 'c' ],
  \ [ 'y', 'z' ]
  \ ]
let g:airline_section_z = '%l,%c | %L'
