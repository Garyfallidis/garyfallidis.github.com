" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
set textwidth=79        " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

" make backspaces more powerfull
set backspace=indent,eol,start

set ruler                           " show line and column number
syntax on                       " syntax highlighting
set showcmd                     " show (partial) command in status line


" tab navigation
noremap <C-Left> :tabprevious<CR>
noremap <C-Right> :tabnext<CR>
inoremap <C-Left> <Esc>:tabprevious<CR>i
inoremap <C-Right> <Esc>:tabnext<CR>i

" move tabs
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>


" save current
noremap <C-Down> :w<CR>
inoremap <C-Down> <Esc>:w <CR>i

" enable clipboard cut/copy/paste from visual mode without d/y/P 
set clipboard=unnamedplus

" i for insert and ii for esc
imap ii <Esc>

" save with ww
noremap ww :w<CR>
inoremap ww <Esc>:w <CR>i

" exit with xx
noremap xx :x<CR>
inoremap xx <Esc>:x <CR>i

" highlight tabs and trailing spaces
set listchars=tab:>-,trail:-
set list
