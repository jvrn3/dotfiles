let g:lightline = {
            \ 'colorscheme': 'darcula',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'gitbranch','cocstatus', 'readonly', 'filename', 'modified' ] ],
            \   'right': [['lineinfo'], ['percent'], ['fileformat'], ['fileencoding'], ['filetype']]
            \ },
            \ 'component_function': {
            \  'cocstatus': 'coc#status',
            \   'filetype': 'MyFiletype',
            \   'fileformat': 'MyFileformat',
            \ },
\}

"  function! MyFiletype()
"    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
"  endfunction

"  function! MyFileformat()
"    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
"  endfunction



  function! LightLineFugitive()
      let _ = fugitive#head()
      return strlen(_) ? ' '._ : ''
  endfunction
