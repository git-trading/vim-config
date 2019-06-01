" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
  source ~/.vimrc.plug
endif

" set comma as leader character
let mapleader = ","
" toggles indent guide (from vim-indent-guides plugin)
map ,ig :IndentGuidesToggle<CR>

" Set colorscheme
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

" Set compatibility to Vim only.
" set nocompatible

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn on syntax highlighting.
syntax on

" For plug-ins to load correctly
filetype plugin indent on

" Turn of modelines
set modelines=0

" Automatically wrap text that extends beyond the screen length.
set wrap

" Vim's auto indentation feature does not work properly with text copies from outside Vim.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C -O> :set invpaste paste?<CR>
set pastetoggle=<F2>

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
" set textwidth=79

set formatoptions=tcqrn1
set tabstop=3
set shiftwidth=3
set softtabstop=3
set expandtab
set noshiftround

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Status bar
set laststatus=2

" Display options
set showmode " shows mode i'm currently in
set showcmd " shows the command I'm typing
set ruler " shows the rule

" Highlight matching pairs of brackets. Use the '%' character to jump between
" them.
set matchpairs+=<:>

" Display different types of white spaces.
scriptencoding utf-8
set encoding=utf-8
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Show line numbers
set number relativenumber

" Set status line dipslay
" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Highlight matching search patterns
set hlsearch

" Enable incremental search
set incsearch

" Include matching uppercase words with lowercase saerch term
set ignorecase

" Include only uppercase words with uppercase search term
set smartcase

" Store info from no moore than 100 files at a time, 9999 lines of text, 100kb
" of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Map the <Space> key to toggle a selected fold opene/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

nnoremap <leader>rv :source $MYVIMRC<CR>
" Insert blank line above and go to insert mode on at the end of current line
inoremap <C-k> <Esc>O<Esc>jA
nnoremap <F2> :echo 'Current time is ' . strftime('%c')<CR>
nnoremap <silent> <F2> :lchdir %:p:h<CR>:pwd<CR>

