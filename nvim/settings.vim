" Settings for Vim

set autoread          " automatically update file unless buffer has unsaved changes
set hidden            " allow buffer switching without saving
set history=1000      " Store a ton of history (default is 20)
set noswapfile        " Don't use swap file
set timeout           " Time out on key codes but not mappings.
set ttimeout          " Time out on key codes but not mappings.
set timeoutlen=1000   " Time to wait for a command (after leader for example).
set ttimeoutlen=100   " Time to wait for a key sequence.
set nostartofline     " Don't go to the start of the line after some commands
set scrolloff=3       " minimum lines to keep above and below cursor
set switchbuf=useopen " Switch to an existing buffer if one exists)
set splitright        " Split vertical windows right to the current windows
set splitbelow        " Split horizontal windows below to the current windows
set encoding=UTF-8    " Set default encoding to UTF-8
set laststatus=2      " show the status line all the time
set showcmd           " show incomplete commands
set noshowmode        " don't show which mode disabled for PowerLine
set cmdheight=1       " command bar height
set title             " set terminal title"
set number            " show line numbers"
set autoindent        " automatically set indent of new line"
" set smartindent
set textwidth=80      " set width of the line to 80 characters
set wrap              " turn on line wrapping
set wrapmargin=8      " wrap lines when coming within n characters from side
set linebreak         " set soft wrapping
set showbreak=…       " show ellipsis at breaking
set ttyfast           " faster redrawing
" set diffopt+=vertical
set guifont=FuraCode\ Nerd\ Font:h11

set expandtab               " insert spaces rather than tabs for <Tab>
set smarttab                " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=2               " the visible width of tabs
set softtabstop=2           " edit as if the tabs are 4 characters wide
set shiftwidth=2            " number of spaces to use for indent and unindent
set shiftround              " round indent to a multiple of 'shiftwidth'
" set completeopt+=longest,menuone
" set complete=.,w,b,u,t
set magic                   " Set magic on, for regex
set showmatch               " show matching braces

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

" enables a menu at the bottom of the vim/gvim window.
set wildmenu

" when you do completion in the command line via tab,
" these events will happen:
" 1. (first tab) a list of completions will be shown
"    and the command will be completed to the longest
"    common command
" 2. (second tab) the wildmenu will show up with all the
"    completions that were listed before.
set wildmode=list:longest,full

" Backspace works in Insert mode (e.g. not inserting a ^?),
" but won't delete over line breaks, or automatically-inserted
" indentation, or the place where insert mode started so:
set backspace=indent,eol,start

" show invisible characters
set list
set listchars=tab:→\ ,trail:•,extends:❯,precedes:❮

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Make sure files are properly highlighted
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins"

" Gary Bernhardt's split style
set winwidth=79
set winheight=5
set winminheight=5
set winheight=999
