"A special thanks to /onlurking

set nocompatible
set termguicolors
"let g:python3_host_prog = $HOME."/.pyenv/versions/neovim/bin/python" 
"let g:python_host_prog = $HOME."/.pyenv/versions/neovim2/bin/python"

let s:config_path = $HOME."/.config/nvim/"
let s:config_files = [
            \'common.vim',
	    \'mappings.vim',
	    \'plugins.vim',
        \'plugins/coc.vim',
        \'plugins/fzf.vim',
        \'plugins/vimwiki.vim',
        \'plugins/rainbow.vim',
        \'plugins/lightline.vim',
        \'plugins/nerdtree.vim',
        \'plugins/slime.vim',
        \'plugins/tmuxline.vim',
        \]

for file in s:config_files
	if filereadable(s:config_path.file)
		exec "so ".s:config_path.file
	endif
endfor
map <leader>ev :e! ~/.vimrc<cr>
set background=dark
colorscheme base16-tomorrow-night

