syntax enable

filetype plugin on
filetype indent on

set nocompatible
set history=500
set showmode            " always show what mode we're currently editing in
set autoread 			" Set to auto read when a file is changed from the outside
set so=7 			    " Set 7 lines to the cursor - when moving vertically using j/k
set wildmenu 			" Turn on the Wild menu. tab completion
set wildmode=list:full	" Show a list when pressing tab and complete first full match
set title   			" Changes the terminal's title
set ruler	    		" Always show current position
set hid 		    	" A buffer becomes hidden when it is abandoned
set smartcase			" ignore case if search pattern is lowercase; otherwise, sensitive
set ignorecase			" ignore case when searching
set backspace=eol,start,indent	" allow backspaceing over everything in insert mode
set whichwrap+=<,>,h,l	
set hlsearch			" highlight search terms
set incsearch			" show search matches while you type
set lazyredraw
set magic
set noerrorbells		" No annoying beeps
set novisualbell		" No annoying beeps
set t_vb=
set tm=500
set nobackup			" No backups
set nowb
set noswapfile			" do not use/write swapfiles
set expandtab
set smarttab
set autoindent			" autoindentation on
set shiftwidth=4		" number of spaces to use for autoindenting
set tabstop=4 			" a tab is four spaces
set number		    	" show line numbers
set showmatch			" show matching parenthesis
set lbr
set tw=500
set cindent
set cinkeys-=0#
set indentkeys-=0#
set wrap
set ffs=unix,dos,mac 		" Use Unix as the standard file type
set cmdheight=2                 " Height of the command bar
set laststatus=2		" display a status line
set background=dark
set termencoding=utf-8
set encoding=utf-8
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
nmap <leader>w :w!<cr>          " Fast Saving


" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.swp,*.bak,*.class
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif


try
    colorscheme desert
catch
endtry

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

