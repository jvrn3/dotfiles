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


