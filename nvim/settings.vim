" Behaviors
" ---------------
set nocompatible      " not compatible with vi
set autoread          " automatically update file unless buffer has unsaved changes
syntax enable         " Turn on syntax highlighting allowing local overrides
set hidden            " allow buffer switching without saving
set history=1000      " Store a ton of history (default is 20)
set noswapfile        " Don't use swap file
set nostartofline     " Don't go to the start of the line after some commands
set pastetoggle=<F7>  " set showcmd
set timeout           " Time out on key codes but not mappings.
set ttimeout          " Time out on key codes but not mappings.
set timeoutlen=1000   " Time to wait for a command (after leader for example).
set ttimeoutlen=100   " Time to wait for a key sequence.
set nostartofline     " Don't go to the start of the line after some commands
set scrolloff=3       " minimum lines to keep above and below cursor
set switchbuf=useopen " Switch to an existing buffer if one exists)
set splitright        " Split vertical windows right to the current windows
set splitbelow        " Split horizontal windows below to the current windows"
set encoding=utf-8    " Set default encoding to UTF-8"
set cursorline        " Highlight current line
set hidden            " current buffer can be put into background
set laststatus=2      " show the satus line all the time"
set showcmd           " show incomplete commands
set noshowmode        " don't show which mode disabled for PowerLine
set wildmenu          " enhanced command line completion"
set scrolloff=3       " lines of text around cursor
set shell=$SHELL
set cmdheight=1       " command bar height
set title             " set terminal title"
set number            " show line numbers"
" set relativenumber  " show relative line numbers
set autoindent        " automatically set indent of new line"
set smartindent
set wrap              " turn on line wrapping
set wrapmargin=8      " wrap lines when coming within n characters from side
set linebreak         " set soft wrapping
set showbreak=…       " show ellipsis at breaking
set ttyfast           " faster redrawing"
set diffopt+=vertical

set noexpandtab             " insert tabs rather than spaces for <Tab>
set smarttab                " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4               " the visible width of tabs
set softtabstop=4           " edit as if the tabs are 4 characters wide
set shiftwidth=4            " number of spaces to use for indent and unindent
set shiftround              " round indent to a multiple of 'shiftwidth'
set completeopt+=longest,menuone
set complete=.,w,b,u,t
set magic                   " Set magic on, for regex
set showmatch               " show matching braces

" error bells
set noerrorbells
set visualbell
set t_vb=
set tm=500


" Mouse support
set mousehide  " Hide mouse after chars typed
set mouse=a    " Mouse in all modes
if !has('nvim')
  set ttymouse=xterm2
endif

" Searching
set ignorecase              " case insensitive searching
set smartcase               " case-sensitive if expresson contains a capital letter
set hlsearch                " highlight search results
set incsearch               " set incremental search, like modern browsers
set nolazyredraw            " don't redraw while executing macros

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.orig                           " Merge resolution files
set wildignore+=*bower_components/*              " Ignore bower
set wildignore+=*node_modules/*                  " Ignore npm

set wildmode=list:full   " complete files like a shell"
set backspace=indent,eol,start " make backspace behave in a sane manner

" Color
" ---------------
syntax on
set background=dark
colorscheme onedark

if &term =~ '256color'
  " Force 256 color mode if available
  set t_Co=256
  " disable background color erase
  set t_ut=
endif

" enable 24 bit color support if supported
if (empty($TMUX) && has("termguicolors"))
  set termguicolors
endif

" make the highlighting of tabs and other non-text less annoying
highlight SpecialKey ctermbg=none ctermfg=8
highlight NonText ctermbg=none ctermfg=8

" make comments and HTML attributes italic
highlight Comment cterm=italic
highlight htmlArg cterm=italic

let g:onedark_termcolors=16
let g:onedark_terminal_italics=1

" toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:•,extends:❯,precedes:❮
set showbreak=↪

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

set statusline=%<%f\                           " Filename
set statusline+=%w%h%m%r                       " Options
set statusline+=\ [%{&ff}/%Y]                  " filetype
set statusline+=\ [%{split(getcwd(),'/')[-1]}] " current dir
set statusline+=%=%-14.(%l,%c%V%)\ %p%%        " Right aligned file nav info"

" code folding settings
set foldmethod=syntax       " fold based on indent
set foldnestmax=10          " deepest fold is 10 levels
set nofoldenable            " don't fold by default
set foldlevel=1

" Gary Bernhardt's split style
set winwidth=79
set winheight=5
set winminheight=5
set winheight=999
