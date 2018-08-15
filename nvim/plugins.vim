" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" colourschemes
Plug 'joshdick/onedark.vim'
Plug 'KeitaNakamura/neodark.vim'
Plug 'mhartington/oceanic-next'

" utilities
Plug 'junegunn/vim-easy-align' " A simple, easy-to-use Vim alignment plugin
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " The NERD tree
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreetToggle' } " A plugin of NERDTree showing git status flags
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim' " fuzzy file finder and so much more
Plug 'Raimondi/delimitMate' " automatic closing of quotes, parenthesis, brackets, etc.
Plug 'tpope/vim-surround' " mappings to easily delete, change and add such surroundings in pairs, such as quotes, parens, etc.
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive' " amazing git wrapper for vim
Plug 'tpope/vim-repeat' " enables repeating other supported plugins with the . command
Plug 'tpope/vim-commentary' " comment stuff out
Plug 'tpope/vim-unimpaired' " mappings which are simply short normal mode aliases for commonly used ex commands
Plug 'editorconfig/editorconfig-vim' " .editorconfig support
Plug 'bronson/vim-trailing-whitespace'
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' } " distraction-free writing
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' } " focus tool. Good for presentating with vim
Plug 'dag/vim-fish' " addon for Vim providing support for editing fish scripts
Plug 'MarcWeber/vim-addon-mw-utils' " interpret a file by function and cache file automatically
Plug 'tomtom/tlib_vim' " utility functions for vim
Plug 'garbas/vim-snipmate' " snippet manager
Plug 'unblevable/quick-scope' "A Vim plugin that highlights which characters to target for f, F and family

" html
Plug 'gregsexton/MatchTag', { 'for': 'html' } " match tags in html, similar to paren support

" language highlighting
Plug 'sheerun/vim-polyglot' " A collection of language packs for Vim.

" JavaScript
Plug 'pangloss/vim-javascript'

" styles
Plug 'ap/vim-css-color', { 'for': ['css','stylus','scss'] } " set the background of hex color values to the color
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' } " CSS3 syntax support
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' } " sass scss syntax support

" markdown
Plug 'itspriddle/vim-marked', { 'for': 'markdown', 'on': 'MarkedOpen' } " Open markdown files in Marked.app - mapped to <leader>m
Plug 'tpope/vim-markdown', { 'for': 'markdown' } " markdown support

" language-specific plugins
Plug 'elzr/vim-json', { 'for': 'json' } " JSON support
Plug 'rust-lang/rust.vim' " Rust support for vim

" Tmux
Plug 'edkolev/tmuxline.vim' " Simple tmux statusline generator

" vim airline
Plug 'vim-airline/vim-airline'

" devicons
Plug 'ryanoasis/vim-devicons'

" NerdTree
Plug 'scrooloose/nerdtree'

" Ale
Plug 'w0rp/ale'

" GitGutter
Plug 'airblade/vim-gitgutter'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

Plug 'andymass/vim-matchup'

" Add plugins to &runtimepath
call plug#end()
