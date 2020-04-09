" Download Vim Plug if not present
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



call plug#begin('~/.local/share/nvim/plugged')
    Plug 'mhinz/vim-startify'
    " Appearance    
    Plug 'itchyny/lightline.vim'
    Plug 'machakann/vim-highlightedyank' 
    "Motion
    Plug 'sheerun/vim-polyglot'
    Plug 'tpope/vim-surround'
	Plug 'tpope/vim-repeat'
    Plug 'scrooloose/nerdcommenter'
    Plug 'tpope/vim-unimpaired' 
    Plug 'christoomey/vim-tmux-navigator' 
    Plug 'tpope/vim-rsi'
    Plug 'luochen1990/rainbow'
    "Plug 'Raimondi/delimitMate'  " Closing parentheses etc
    "Snippets
    Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
    Plug 'honza/vim-snippets'

    "Project
    Plug 'tpope/vim-fugitive'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'junegunn/fzf.vim'
    Plug 'liuchengxu/vista.vim'
    Plug 'Yggdroot/indentLine' " Vertical lines indentation
    Plug 'preservim/nerdtree'
    Plug 'Glench/Vim-Jinja2-Syntax'
    Plug 'metakirby5/codi.vim'

    Plug 'wakatime/vim-wakatime'
    "Plug 'pope/vim-vinegar'
     Plug 'mbbill/undotree'   
    "Writing
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
    Plug 'vimwiki/vimwiki'
    "Plug 'reedes/vim-pencil'

    "Notekeeping
    Plug 'vimwiki/vimwiki'
call plug#end()
let g:webdevicons_enable_startify = 1
