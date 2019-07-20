" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" colourschemes
Plug 'KeitaNakamura/neodark.vim'

" utilities
Plug 'junegunn/vim-easy-align' " A simple, easy-to-use Vim alignment plugin
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim' " fuzzy file finder and so much more
Plug 'Raimondi/delimitMate' " automatic closing of quotes, parenthesis, brackets, etc.
Plug 'tpope/vim-surround' " mappings to easily delete, change and add such surroundings in pairs, such as quotes, parens, etc.
Plug 'tpope/vim-fugitive' " amazing git wrapper for vim
Plug 'tpope/vim-repeat' " enables repeating other supported plugins with the . command
Plug 'editorconfig/editorconfig-vim' " .editorconfig support
Plug 'bronson/vim-trailing-whitespace'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' } " distraction-free writing
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' } " focus tool. Good for presentating with vim

" html
Plug 'gregsexton/MatchTag', { 'for': 'html' } " match tags in html, similar to paren support

" language highlighting
Plug 'sheerun/vim-polyglot' " A collection of language packs for Vim.

" JavaScript
Plug 'pangloss/vim-javascript'

" markdown
Plug 'tpope/vim-markdown', { 'for': 'markdown' } " markdown support

" language-specific plugins
Plug 'elzr/vim-json', { 'for': 'json' } " JSON support
Plug 'rust-lang/rust.vim' " Rust support for vim

" Add plugins to &runtimepath
call plug#end()
