" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

" colourschemes
Plug 'joshdick/onedark.vim'

" utilities
Plug 'junegunn/vim-easy-align' " A simple, easy-to-use Vim alignment plugin
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " The NERD tree
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreetToggle' } " A plugin of NERDTree showing git status flags
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim' " fuzzy file finder and so much more
Plug 'Raimondi/delimitMate' " automatic closing of quotes, parenthesis, brackets, etc.
Plug 'tpope/vim-surround' " mappings to easily delete, change and add such surroundings in pairs, such as quotes, parens, etc.
Plug 'vim-airline/vim-airline' " fancy statusline
Plug 'vim-airline/vim-airline-themes' " themes for vim-airline
Plug 'tpope/vim-fugitive' " amazing git wrapper for vim
Plug 'tpope/vim-repeat' " enables repeating other supported plugins with the . command
Plug 'tpope/vim-commentary' " comment stuff out
Plug 'tpope/vim-unimpaired' " mappings which are simply short normal mode aliases for commonly used ex commands
Plug 'editorconfig/editorconfig-vim' " .editorconfig support
Plug 'bronson/vim-trailing-whitespace'
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' } " distraction-free writing
Plug 'Yggdroot/indentLine' " displaying thin vertical lines at each indentation level for code indented with spaces
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' } " focus tool. Good for presentating with vim
Plug 'dag/vim-fish' " addon for Vim providing support for editing fish scripts
Plug 'MarcWeber/vim-addon-mw-utils' " interpret a file by function and cache file automatically
Plug 'tomtom/tlib_vim' " utility functions for vim
Plug 'garbas/vim-snipmate' " snippet manager

" html / templates
Plug 'gregsexton/MatchTag', { 'for': 'html' } " match tags in html, similar to paren support
Plug 'othree/html5.vim', { 'for': 'html' } " html5 support
Plug 'mustache/vim-mustache-handlebars' " mustach suppor

" JavaScript
Plug 'pangloss/vim-javascript'

" TypeScript
Plug 'Quramy/tsuquyomi', { 'for': 'typescript', 'do': 'npm install' } " extended typescript support - works as a client for TSServer
Plug 'clausreinke/typescript-tools.vim', { 'for': 'typescript' } " typescript tools
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' } " typescript support

" styles
Plug 'ap/vim-css-color', { 'for': ['css','stylus','scss'] } " set the background of hex color values to the color
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' } " CSS3 syntax support
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' } " sass scss syntax support

" markdown
Plug 'itspriddle/vim-marked', { 'for': 'markdown', 'on': 'MarkedOpen' } " Open markdown files in Marked.app - mapped to <leader>m
Plug 'tpope/vim-markdown', { 'for': 'markdown' } " markdown support

" language-specific plugins
Plug 'elzr/vim-json', { 'for': 'json' } " JSON support
Plug 'Shougo/vimproc.vim', { 'do': 'make' } " interactive command execution in vim
Plug 'elixir-lang/vim-elixir' " Elixir support for vim
Plug 'rust-lang/rust.vim' " Rust support for vim

" Add plugins to &runtimepath
call plug#end()
