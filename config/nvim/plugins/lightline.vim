let g:lightline = {
            \ 'colorscheme': 'darcula',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'gitbranch','cocstatus', 'readonly', 'filename', 'modified' ] ],
            \   'right': [['percent'], ['lineinfo']]
            \ },
            \ 'component_function': {
            \   'gitbranch': 'fugitive#head',
            \  'cocstatus': 'coc#status'
            \ },
\}
	
