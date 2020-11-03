" Download Vim Plug if not present
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



call plug#begin('~/.local/share/nvim/plugged')

    " Appearance
    Plug 'itchyny/lightline.vim' " Status line
    Plug 'edkolev/tmuxline.vim' " Tmux statusline that works with lightline
    Plug 'machakann/vim-highlightedyank' " Highlight copy/paste
    Plug 'ryanoasis/vim-devicons' " Cool icons
    Plug 'luochen1990/rainbow'  " Colorful parentheses
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  } "

    "Motion
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-repeat' " Repeat plugin commands with .
    Plug 'tpope/vim-rsi'  " Emacs basic commands on insert mode
    Plug 'scrooloose/nerdcommenter' " Comments
    Plug 'christoomey/vim-tmux-navigator' " Easy navigation with tmux and vim
    Plug 'rbgrouleff/bclose.vim'  " Close buffer but not the window

    "Project
    "Plug 'vim-test/vim-test'
    Plug 'sheerun/vim-polyglot' "Support for syntax highlight on multiple languages
    Plug 'honza/vim-snippets'  " Collection of snippets
    "Plug 'editorconfig/editorconfig-vim'
    Plug 'liuchengxu/vista.vim' " View Tags
    Plug 'Yggdroot/indentLine' " Minimalist vertical lines indentation
    Plug 'metakirby5/codi.vim'  "
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " The glorious coc nvim
    Plug 'gregsexton/MatchTag' " Match HTML tags
    ""
    "Plug 'OmniSharp/omnisharp-vim'
    "Plug 'dense-analysis/ale'
    Plug 'Glench/Vim-Jinja2-Syntax'

    "Enhancement
    "Plug 'mhinz/vim-startify' "
    Plug 'preservim/nerdtree'  " Tree explorer, can be replaced by netrw
    Plug 'airblade/vim-gitgutter'  " Show diff mark in sign column
    Plug 'tpope/vim-fugitive' " Git
    Plug 'junegunn/fzf.vim'  " Fuzzy plugin for vim

    " Show how long I stay on vim, although it's a paid service
    " and only records data about the last two weeks
    Plug 'wakatime/vim-wakatime'
    "
    "Writing
    Plug 'reedes/vim-pencil'
    Plug 'junegunn/goyo.vim'

    "Notekeeping
    Plug 'vimwiki/vimwiki'
call plug#end()
