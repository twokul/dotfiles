filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins"

au BufRead,BufNewFile *.css,*.scss set filetype=scss.css ts=2 sw=2 sts=2
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars ts=2 sw=2 sts=2
au BufNewFile,BufRead *.vim setlocal noet ts=2 sw=2 sts=2
au BufNewFile,BufRead *.md setlocal spell noet ts=2 sw=2
au BufNewFile,BufRead *.yml,*.yaml setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.js,*.ts setlocal expandtab ts=2 sw=2

" xml settings
autocmd bufnewfile,bufread *.xml set filetype=html

" js settings
autocmd bufnewfile,bufread *.json set filetype=javascript

" scala settings
autocmd BufNewFile,BufReadPost *.scala setl shiftwidth=2 expandtab

" Markdown Settings
autocmd BufNewFile,BufReadPost *.md setl ts=2 sw=2 sts=2 expandtab

" spell check for git commits
autocmd FileType gitcommit setlocal spell
