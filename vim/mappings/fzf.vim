" fzf layout
let g:fzf_layout = { 'down': '~25%' }

nnoremap <C-p> :FZF<CR>

if isdirectory(".git")
  " if in a git project, use :GFiles
  nmap <silent> <leader>t :GFiles<cr>
else
  " otherwise, use :FZF
  nmap <silent> <leader>t :FZF<cr>
endif

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

autocmd VimEnter * command! Colors
   \ call fzf#vim#colors({'left': '15%', 'options': '--reverse --margin 30%,0'})

" Enable per command history
let g:fzf_history_dir = '~/.local/share/fzf-history'

" [Files] Extra options for fzf
"   e.g. File preview using Highlight
"        (http://www.andre-simon.de/doku/highlight/en/highlight.html)
let g:fzf_files_options =
  \ '--preview "(highlight -O ansi {} || cat {}) 2> /dev/null | head -'.&lines.'"'

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
