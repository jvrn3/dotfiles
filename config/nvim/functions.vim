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


" Toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
map <silent> <F3> :call ToggleVExplorer()<CR>
