" Download Vim Plug if not present
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



call plug#begin('~/.local/share/nvim/plugged')
    Plug 'mhinz/vim-startify'

    " Appearance
    Plug 'itchyny/lightline.vim' " Status line
    Plug 'edkolev/tmuxline.vim' " Tmux statusline that works with lightline
    Plug 'machakann/vim-highlightedyank' " Highlight copy/paste
    Plug 'ryanoasis/vim-devicons' " Cool icons

    "Motion
    Plug 'tpope/vim-surround' 
    Plug 'tpope/vim-repeat' " Repeat plugin commands with .
    Plug 'scrooloose/nerdcommenter' " Comments
    Plug 'tpope/vim-unimpaired'
    Plug 'christoomey/vim-tmux-navigator' " Easy navigation with tmux and vim
    Plug 'tpope/vim-rsi'  " Emacs basic commands on insert mode
    Plug 'rbgrouleff/bclose.vim'  " Close buffer but not the window

    "Project
    Plug 'sheerun/vim-polyglot' "Suport for syntax highlight on multiple languages
    Plug 'honza/vim-snippets'  " Collection of snippets
    Plug 'luochen1990/rainbow'  " Colorful parentheses
    Plug 'tpope/vim-fugitive' " Git 
    Plug 'editorconfig/editorconfig-vim'
    Plug 'airblade/vim-gitgutter'  " Show diff mark in sign column
    Plug 'junegunn/fzf.vim'  " Fuzzy plugin for vim
    Plug 'liuchengxu/vista.vim'
    Plug 'Yggdroot/indentLine' " Vertical lines indentation
    Plug 'preservim/nerdtree'  " Tree explorer
    Plug 'Glench/Vim-Jinja2-Syntax'
    Plug 'metakirby5/codi.vim'  " 
    Plug 'gregsexton/MatchTag'
    Plug 'jpalardy/vim-slime'

    Plug 'wakatime/vim-wakatime'  " Show how long I stay on vim
    "Plug 'pope/vim-vinegar'
     Plug 'mbbill/undotree'
    "Writing
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
    Plug 'vimwiki/vimwiki'
    Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}

    "Plug 'reedes/vim-pencil'

    "Notekeeping
    Plug 'vimwiki/vimwiki'
call plug#end()
