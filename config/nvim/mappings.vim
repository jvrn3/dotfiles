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
nnoremap <silent> <leader>gj :diffget //3<CR>
nnoremap <silent> <leader>gf :diffget //2<CR>


" Spell check
map <leader>s :setlocal spell! spelllang=en_US<CR>
map <leader>ss :setlocal spell! spelllang=pt_BR<CR>

:nnoremap <expr> <leader>r ':w!<cr>'.(
    \ &ft=='python'     ? ':!time python %<cr>' :
    \ &ft=='coc'        ? ':!time (coc type %:r; coc norm %:r)<cr>' :
    \ &ft=='racket'     ? ':!racket %<cr>' :
    \ &ft=='haskell'    ? ':!runghc --ghc-arg=-freverse-errors %<cr>' :
    \ &ft=='javascript' ? ':!time node %<cr>' :
    \ &ft=='typescript' ? ':!time ts-node %<cr>' :
    \ ':!time cc %<cr>')

map <leader>ev :e! ~/.config/nvim/


:nnoremap <F6> "=strftime("%d %h %Y")<CR>p

