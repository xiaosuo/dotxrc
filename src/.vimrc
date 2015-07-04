" Colors
set t_Co=256
set background=dark

" Encoding
set encoding=utf-8
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
" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
if exists("g:did_load_filetypes")
	filetype off
	filetype plugin indent off
endif
execute pathogen#infect()
filetype plugin indent on
syntax on
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

set backspace=2

let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_autoclose_preview_window_after_completion = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

noremap <Leader>t :TagbarToggle<CR>
noremap <Leader>f :NERDTreeToggle<CR>
