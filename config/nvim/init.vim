"A special thanks to /onlurking

set nocompatible
set termguicolors
let g:python3_host_prog = $HOME."/.pyenv/versions/neovim3/bin/python"

"if exists('+termguicolors')
  "let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  "let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  "set termguicolors
"endif
set termguicolors
let s:config_path = $HOME."/.config/nvim/"
let s:config_files = [
            \'common.vim',
            \'functions.vim',
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
            \'plugins/pencil.vim',
            \'plugins/ale.vim',
            \'plugins/omnisharp.vim'
        \]

for file in s:config_files
	if filereadable(s:config_path.file)
		exec "so ".s:config_path.file
	endif
endfor

set background=light
set encoding=UTF-8
"colorscheme base16-tomorrow-night
colorscheme solarized

