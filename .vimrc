" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
  source ~/.vimrc.plug
endif

" set comma as leader character
let mapleader = ","
" toggles indent guide (from vim-indent-guides plugin)
map ,ig :IndentGuidesToggle<CR>

" Set colorscheme settings
" set t_Co=256
" set termguicolors
colorscheme hybrid
set background=dark

" vim-indent-guides config
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,ColorScheme * :hi IndentGuidesOdd ctermbg=235
autocmd VimEnter,ColorScheme * :hi IndentGuidesEven ctermbg=235
let g:indent_guides_guide_size=1

" turn off vim backing shit up flooding the home directory
set nobackup
set nowritebackup
set noswapfile

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off
" filetype indent on " load filetype-specific indent files
syntax on " Turn on syntax highlighting.

" For plug-ins to load correctly
filetype plugin indent on

" Turn of modelines
set modelines=0

set wrap " Automatically wrap text that extends beyond the screen length.

" Vim's auto indentation feature does not work properly with text copies from outside Vim.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C -O> :set invpaste paste?<CR>
set pastetoggle=<F2>

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
" set textwidth=79

set formatoptions=tcqrn1
set tabstop=3 " number of visual spaces per tab
set softtabstop=3 " number of spaces in tab when editing
set shiftwidth=3 " determines amount of whitespace to insert/remove
set expandtab " converts tabs into spaces
set noshiftround " does NOT round indent to multiple of shiftwidth

set scrolloff=10 " Display 10 lines above/below the cursor
set backspace=indent,eol,start " Fixes common backspace problems

set ttyfast " Speed up scrolling in Vim
set laststatus=2 " always show status bar
set lazyredraw " tell vim to NOT redraw when executing macros

" Display options
set showmode " shows mode i'm currently in
set showcmd " shows the command I'm typing
set ruler " shows the ruler

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Display different types of white spaces.
scriptencoding utf-8
set encoding=utf-8
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

set number relativenumber " Show line numbers and relative numbers

" Set status line dipslay
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

set hlsearch " Highlight matching search patterns
set incsearch " Enable incremental search
set ignorecase " Include matching uppercase words with lowercase saerch term
set smartcase " Include only uppercase words with uppercase search term
" mapping for removing highlights e.g., after searching
nnoremap <leader><space> :noh<CR>

" Store info from no moore than 100 files at a time, 9999 lines of text, 100kb
" of data. Useful for copying large amounts of data between files.  set viminfo='100,<9999,s100

set foldenable " enable folding
set foldlevelstart=10 " open most folds by default, blocks past 10 are stil folded
set foldnestmax=10 " 10 nested folds max, guards against too many folds
" space opens/closes folds
nnoremap <space> za
set foldmethod=indent " fold based on indent level

" Map the <Space> key to toggle a selected fold opene/closed.
" nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" test mapping for instant save and quit
nnoremap <leader>F :wq<CR>

" test mapping for triggering Ex mode

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

" mapping for refreshing 
nnoremap <leader>rv :source $MYVIMRC<CR>
" Insert blank line abovv and go to insert mode on at the end of current line
inoremap <C-k> <Esc>O<Esc>jA
nnoremap <F2> :echo 'Current time is ' . strftime('%c')<CR>
nnoremap <silent> <F2> :lchdir %:p:h<CR>:pwd<CR>

