"A special thanks to /onlurking

set nocompatible
set termguicolors

let s:config_path = '/home/jvrn3/.config/nvim/'
let s:config_files = [
            \'common.vim',
	    \'mappings.vim',
	    \'plugins.vim',
        \'plugins/coc.vim',
        \'plugins/fzf.vim',
        \'plugins/vimwiki.vim',
        \'plugins/rainbow.vim',
        \'plugins/lightline.vim',
\]

for file in s:config_files
	if filereadable(s:config_path.file)
		exec "so ".s:config_path.file
	endif
endfor
map <leader>ev :e! ~/.vimrc<cr>
colorscheme nord
