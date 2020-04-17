let mapleader = ","
let maplocalleader = "'"

inoremap jk <esc>
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

nnoremap <Space> za
nnoremap z0 zR
nnoremap zC zM
nnoremap zc zc
noremap H ^
noremap L $
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>
inoremap <silent><expr> <c-space> coc#refresh()

"Fugitive
nnoremap <silent> <leader>gs  :Gstatus<CR>
nnoremap <silent> <leader>gd  :Gvdiff<CR>
nnoremap <silent> <leader>gc  :Gcommit<CR>
nnoremap <silent> <leader>gb  :Gblame<CR>
nnoremap <silent> <leader>gp  :Git push<CR>
nnoremap <silent> <leader>gr  :Gread<CR>
nnoremap <silent> <leader>gw  :Gwrite<CR>
nnoremap <silent> <leader>gwq :Gwrite<CR>:qa<CR>
nnoremap <silent> <leader>ge :Gedit<CR>

nnoremap <leader>t :tabnew<cr>
nnoremap <leader>e :tabedit
nnoremap <leader>c :tabclose
nnoremap <leader>n :tabnext<cr>
nnoremap <leader>p :tabprevious<cr>
nnoremap ; :Buffers<cr>

nnoremap <C-P> :Files<cr>
nnoremap <C-F> :Ag 


fun! RemapPaneArrows()
  nnoremap <buffer> <silent> <Right> :vertical resize +5<cr>
  nnoremap <buffer> <silent> <Left> :vertical resize -5<cr>
  nnoremap <buffer> <silent> <Down> :resize +5<cr>
  nnoremap <buffer> <silent> <Up> :resize -5<cr>
endfun

augroup remappanesarrows
	autocmd!
	autocmd VimEnter,BufNewFile,BufReadPost,BufEnter * silent! call RemapPaneArrows()

augroup end
" }}}
" ##### Hard Mode {{{
"
fun! RemapArrows()
  inoremap <buffer> <silent> <Right> <nop>
  inoremap <buffer> <silent> <Left> <nop>
  inoremap <buffer> <silent> <Up> <nop>
  inoremap <buffer> <silent> <Down> <nop>

  vnoremap <buffer> <silent> <Right> <nop>
  vnoremap <buffer> <silent> <Left> <nop>
  vnoremap <buffer> <silent> <Up> <nop>
  vnoremap <buffer> <silent> <Down> <nop>
endfun

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
