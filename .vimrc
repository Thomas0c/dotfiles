"set cursor line only in active window
set cursorline
autocmd WinLeave * set nocursorline
autocmd WinEnter * set cursorline

syntax enable
if has('win32')
	set backupdir=$TEMP/vim//,$TEMP// "~ files
	set directory=$TEMP/vim//,$TEMP// "swap files
else
	set backupdir=~/tmp/vim//,~/tmp//,/tmp/vim//,/tmp// "~ files
	set directory=~/tmp/vim//,~/tmp//,/tmp/vim,/tmp// "swap files
endif
set nomousehide
set visualbell "don't beep, please
set history=200 "remember more commands

imap <C-W> <Esc><C-W> "make <C-W><C-W> work in insert mode
"make nav keys work in visual mode
vmap <Right> l
vmap <Up> k
vmap <Left> h
vmap <Down> j
map <C-S-Tab> <C-W>W

" Up, Down, Home and End keys in normal and insert mode
map <up> gk
"imap <up> <C-o>gk
map <down> gj
"imap <down> <C-o>gj
"map <home> g<home>
"imap <home> <C-o>g<home>
"map <end> g<end>
"imap <end> <C-o>g<end>


" Disable ctrl-space since it's annoying
imap <Nul> <Space>
map  <Nul> <Nop>
vmap <Nul> <Nop>
cmap <Nul> <Nop>
nmap <Nul> <Nop>

" What should backspace do?
set backspace=indent,eol,start

" Don't break words in middle
set linebreak

" Show incomplete paragraphs even when they don't fit on screen (avoid @'s)
set display+=lastline

" Indentation
autocmd BufReadPost * :DetectIndent
set noexpandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
let g:detectindent_preferred_indent=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype jade setlocal ts=2 sts=2 sw=2
filetype plugin indent on "enable ftplugins to change indentation

" Folding
set foldlevel=1
set foldnestmax=2
set foldmethod=syntax

syntax on