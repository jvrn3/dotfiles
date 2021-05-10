"A special thanks to /onlurking
let g:python3_host_prog = $HOME."/.pyenv/versions/neovim3/bin/python"


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
            \'plugins/treesitter.vim'
        \]

for file in s:config_files
	if filereadable(s:config_path.file)
		exec "so ".s:config_path.file
	endif
endfor


let color_path = 'colorscheme.vim'
if filereadable(s:config_path.color_path)
  exec 'so '.s:config_path.color_path
else
  " Default color scheme
  colorscheme ayu
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF


autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:slime_target = "tmux"
