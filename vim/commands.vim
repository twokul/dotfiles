" Custom Commands

" Use comma as leader
let mapleader = ","

" set paste toggle
set pastetoggle=<leader>v

" Toggle highlight
nnoremap <leader><space> :nohls<CR>

" Adjust viewports to the same size
map <leader>= <C-w>=

" auto-indent entire file
nnoremap <silent> <leader>a= :gg=G<CR>

" Buffer
" https://technotales.wordpress.com/2010/04/29/vim-splits-a-guide-to-doing-exactly-what-you-want/
nmap <leader>sh :leftabove  vnew<CR>
nmap <leader>sl :rightbelow vnew<CR>
nmap <leader>sk :leftabove  new<CR>
nmap <leader>sj :rightbelow new<CR>

" Use CTRL to move lines up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Map Alt + h,j,k,l to switch windows
noremap <A-h> <C-\><C-n><C-w>h
noremap <A-j> <C-\><C-n><C-w>j
noremap <A-k> <C-\><C-n><C-w>k
noremap <A-l> <C-\><C-n><C-w>l
noremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
