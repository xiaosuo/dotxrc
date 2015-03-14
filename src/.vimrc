" Colors
set t_Co=256
set background=dark

" Encoding
set encoding=euc-cn
set fileencoding=utf-8
set fileencodings=utf-8,gbk,gb18030,gb2312,ucs-bom,cp936,utf-16,big5,latin1
set termencoding=utf-8

" Search
set hlsearch
set incsearch
set showmatch

" Jump to the line where the cursor was at the last time.
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
		\| exec "normal g'\"" | endif
endif

" Cscope
if has("cscope")
	set csto=0
	set cst
	set nocsverb
	" add any database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
	" else add database pointed to by environment
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif
	set csverb
	map g<C-]> :cs find 3 <C-R>=expand("<cword>")<CR><CR>
	map g<C-\> :cs find 0 <C-R>=expand("<cword>")<CR><CR>
endif

set ffs=unix,dos,mac
syntax on
filetype on
filetype plugin on
filetype indent on
set modeline

" Edit space
set number
set textwidth=80
set colorcolumn=+1
set cursorline "hightlight
highlight LineNr ctermbg=DarkGray
highlight LineNr ctermfg=White
highlight CursorLine cterm=none
highlight CursorLine ctermbg=237
highlight ColorColumn ctermbg=237

" Status line
set laststatus=2
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c/%v][%p%%]
