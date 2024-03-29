" Download Vim Plug if not present
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.local/share/nvim/plugged')

    " should check out"
    "Plug 'kristijanhusak/orgmode.nvim'

    " Appearance
    Plug 'itchyny/lightline.vim' " Status line
    Plug 'edkolev/tmuxline.vim' " Tmux statusline that works with lightline
    Plug 'machakann/vim-highlightedyank' " Highlight copy/paste
    Plug 'luochen1990/rainbow'  " Colorful parentheses
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'rktjmp/lush.nvim'
    Plug 'npxbr/gruvbox.nvim'

    " Motion
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-repeat' " Repeat plugin commands with .
    Plug 'tpope/vim-rsi'  " Emacs basic commands on insert mode
    Plug 'scrooloose/nerdcommenter' " Comments
    Plug 'christoomey/vim-tmux-navigator' " Easy navigation with tmux and vim
    Plug 'rbgrouleff/bclose.vim'  " Close buffer but not the window
    Plug 'justinmk/vim-sneak'

    " Project
    " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
    Plug 'honza/vim-snippets'  " Collection of snippets
    Plug 'editorconfig/editorconfig-vim'
    Plug 'liuchengxu/vista.vim' " View Tags
    Plug 'Yggdroot/indentLine' " Minimalist vertical lines indentation
    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
    Plug 'gregsexton/MatchTag' " Match HTML tags
    "Plug 'tpope/vim-dadbod' " Database(should check if i'm using)
    "Plug 'elixir-editors/vim-elixir' rarely use elixir
    Plug 'neovimhaskell/haskell-vim'
    ""

    " Enhancement
    Plug 'jpalardy/vim-slime' " REPL like
    Plug 'preservim/nerdtree'  " Tree explorer, can be replaced by netrw
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'  " Fuzzy plugin for vim

     " Git
    Plug 'airblade/vim-gitgutter'  " Show diff mark in sign column
    Plug 'tpope/vim-fugitive' " Git



    " Writing
    Plug 'reedes/vim-pencil'
    Plug 'junegunn/goyo.vim'

    " Notekeeping
    Plug 'vimwiki/vimwiki'
    Plug 'doums/darcula'
call plug#end()
