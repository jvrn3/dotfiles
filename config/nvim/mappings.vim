let mapleader = ","
let maplocalleader = "'"

" General
inoremap jk <esc>
nnoremap <C-P> :Files<cr>
nnoremap <C-F> :Ag
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Buffer
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

"nnoremap ; :Buffers<cr>

" Tab
nnoremap <leader>t :tabnew<cr>
nnoremap <leader>e :tabedit
nnoremap <leader>c :tabclose
nnoremap <leader>n :tabnext<cr>
nnoremap <leader>p :tabprevious<cr>

" Folding
nnoremap <Space> za
nnoremap z0 zR
nnoremap zC zM
nnoremap zc zc

" Motio
noremap H ^
noremap L $

" Scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Fugitive
nnoremap <silent> <leader>gs  :Gstatus<CR>
nnoremap <silent> <leader>gd  :Gvdiff<CR>
nnoremap <silent> <leader>gc  :Gcommit<CR>
nnoremap <silent> <leader>gb  :Gblame<CR>
nnoremap <silent> <leader>gp  :Git push<CR>
nnoremap <silent> <leader>gr  :Gread<CR>
nnoremap <silent> <leader>gw  :Gwrite<CR>
nnoremap <silent> <leader>gwq :Gwrite<CR>:qa<CR>
nnoremap <silent> <leader>ge :Gedit<CR>


" Spell check
map <leader>s :setlocal spell! spelllang=en_US<CR>
map <leader>ss :setlocal spell! spelllang=pt_BR<CR>

