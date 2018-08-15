" Settings for NerdTree, FZF, Fugitive, Lightline

"> Goyo
""""""""
nnoremap <leader>G :Goyo<CR>
let g:limelight_paragraph_span=1
let g:limelight_priority=-1
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

"> FZF
"""""""

" fzf layout
let g:fzf_layout = { 'down': '~45%' }
" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-i': 'split',
      \ 'ctrl-s': 'vsplit' }

" Hide status line of the containing buffer
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

nnoremap <C-p> :Files<CR>

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

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

let g:rg_command = '
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
  \ -g "*.{js,json,php,md,styl,pug,jade,html,config,py,cpp,c,go,hs,rb,conf,fa,lst}"
  \ -g "!{.config,.git,node_modulesendor,build,yarn.lock,*.sty,*.bst,*.coffee,dist}/*" '

command! -bang -nargs=* F call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)'

"> Vim Fugitive
""""""""""""""""
nmap <silent><leader>gb :Gblame<cr>
nmap <silent> <leader>gs :Gstatus<cr>

"> Vim Lightline
"""""""""""""""""
function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'fugitive#head',
  \   'fileformat': 'LightlineFileformat',
  \   'filetype': 'LightlineFiletype',
  \ },
  \ }

"> Tmuxline
let g:tmuxline_preset='tmux'
let g:tmuxline_theme='lightline'

"> Airline
let g:airline_theme='oceanicnext'

"> QuickScope

" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Trigger a highlight only when pressing f and F.
let g:qs_highlight_on_keys = ['f', 'F']

" NerdTree
nmap <silent> <leader>n :NERDTreeToggle<cr>
let g:NERDSpaceDelims=1
let g:NERDTreeWinSize=40
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
" let NERDTreeDirArrowExpandable = '+'
" let NERDTreeDirArrowCollapsible = '-'
"
" Ale
" Enable completion where available.
let g:ale_completion_enabled = 1
" Fix files with prettier, and then ESLint.
let b:ale_fixers = ['prettier', 'eslint']
" Equivalent to the above.
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}

" GitGutter
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

" Deoplete
let g:deoplete#enable_at_startup = 1
