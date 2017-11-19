" General

" Use comma as leader
let mapleader = ","

" Disable Ex mode from Q
nnoremap Q <nop>

" shortcut to save
nmap <leader>, :w<CR>

" set paste toggle
set pastetoggle=<leader>v

" Toggle highlight
nnoremap <leader><space> :nohls<CR>

" Adjust viewports to the same size
map <leader>= <C-w>=

" Highlight search word under cursor without jumping to next
nnoremap <leader>h *<C-O>

" Use CTRL to move lines up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Map <Esc> to exit terminal mode
noremap <Esc> <C-\><C-n>

" Map Alt + h,j,k,l to switch windows
noremap <A-h> <C-\><C-n><C-w>h
noremap <A-j> <C-\><C-n><C-w>j
noremap <A-k> <C-\><C-n><C-w>k
noremap <A-l> <C-\><C-n><C-w>l
noremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Center the screen
nnoremap <space> zz

" never do this again --> :set paste <ctrl-v> :set no paste
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" set 80 character line limit
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Make sure files are properly highlighted
source ~/.dotfiles/vim/file-types.vim

" Plugins
source ~/.dotfiles/vim/mappings/nerdtree.vim
source ~/.dotfiles/vim/mappings/fzf.vim
source ~/.dotfiles/vim/mappings/fugitive.vim
source ~/.dotfiles/vim/mappings/airline.vim
