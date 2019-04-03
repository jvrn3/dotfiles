
call plug#begin('~/.vim/plugged')

"Appearance
Plug 'dracula/vim'
Plug 'sjl/badwolf'
Plug 'jnurmine/Zenburn'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tomasr/molokai'
Plug 'ajmwagar/vim-deus'
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'

" Languages
Plug 'plasticboy/vim-markdown'
" Plug 'zchee/deoplete-jedi'
" Plug 'zchee/deoplete-clang'
Plug 'pangloss/vim-javascript'
Plug 'sheerun/vim-polyglot'
Plug 'javier-lopez/sml.vim'
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

if has('nvim')
  " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'bfredl/nvim-miniyank'
 

" Improvement
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-abolish'
Plug 'christoomey/vim-tmux-navigator'
Plug 'metakirby5/codi.vim'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-eunuch'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'machakann/vim-highlightedyank'

""SICP setup
Plug 'jpalardy/vim-slime'
let g:slime_target = "tmux"
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 
"""
"#####
" Plug 'alvan/vim-closetag'
"auto complete
"
"##########################

" Project
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf.vim'


Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug '/rking/ag.vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'teranex/jk-jumps.vim'
" see the use of it
" Plug 'jeffkreeftmeijer/vim-numbertoggle'
"Plug 'milkypostman/vim-togglelist'
Plug 'majutsushi/tagbar'
Plug 'duggiefresh/vim-easydir'

Plug 'junegunn/goyo.vim'
Plug 'vimwiki/vimwiki'
" git plugin
" Make
Plug 'tpope/vim-dispatch'
"
" Plug 'embear/vim-localvimrc'
" Plug 'editorconfig/editorconfig-vim'

"Plug 'msanders/snipmate.vim'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'mileszs/ack.vim' 
call plug#end()
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_smart_case = 1
 endif

map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeWinSize=42


nmap <F8> :TagbarToggle <CR>
set shell =/bin/bash
set textwidth=100
set relativenumber
set ruler  " Show cursor position
set title "Show cursor position
set nohlsearch
set nocompatible
syntax on
filetype plugin on 
filetype indent on
set noshowcmd "Display incomplete commands
 set showmode " Display the mode you're in.
set backspace=indent,eol,start " Intuitive backspacing.
set hidden " Handle multiple buffers better.
set wildmenu
set wildmode=list:longest
set wildignore+=*.o
"search
set ignorecase
set incsearch
set smartcase
set laststatus=2
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
set t_Co=256
set background=dark
colorscheme PaperColor

set cmdheight=1

set autoindent
set smartindent

set smarttab
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2

set nobackup
noremap <C-C> <Esc>

set history=1000

set foldmethod=indent
set foldlevelstart=20
set foldlevel=0


" open window below the code
set splitbelow
set scrolloff=3


nmap <F3> :NERDTreeToggle<cr>
noremap H ^
noremap L $
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

let g:ale_set_highlights = 1
let g:ale_change_sign_column_color = 0
let g:ale_completion_enabled=1
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_enter=1 
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)


let mapleader = ","
let maplocalleader = "'"

nnoremap <leader>t :tabnew<cr>
nnoremap <leader>e :tabedit
nnoremap <leader>c :tabclose
nnoremap <leader>n :tabnext<cr>
nnoremap <leader>p :tabprevious<cr>
"

nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
nmap <S-Enter> O<Esc>
"folding
nnoremap <Space> za
nnoremap z0 zR
nnoremap zC zM
nnoremap zc zc




if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"Vim fugitive commands
nnoremap <silent> <leader>gs  :Gstatus<CR>
nnoremap <silent> <leader>gd  :Gvdiff<CR>
nnoremap <silent> <leader>gc  :Gcommit<CR>
nnoremap <silent> <leader>gb  :Gblame<CR>
nnoremap <silent> <leader>gp  :Git push<CR>
nnoremap <silent> <leader>gr  :Gread<CR>
nnoremap <silent> <leader>gw  :Gwrite<CR>
nnoremap <silent> <leader>gwq :Gwrite<CR>:qa<CR>
nnoremap <silent> <leader>ge :Gedit<CR>

"FZF
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
nnoremap <C-P> :Files<cr>
nnoremap <C-F> :Ag 
"
let g:lightline = {
      \ 'colorscheme': 'PaperColor',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [['percent'], ['lineinfo']]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
	
let g:lightline.tabline = {
  \   'left': [ ['tabs'] ],
  \   'right': [ ['close'] ]
  \ }
let g:tmuxline_preset = {
    \'a'       : ['#(whoami)', '#S'],
    \'win'     : ['#I', '#W'],
    \'cwin'    : ['#I', '#W'],
    \'x'       : ['#{prefix_highlight}'],
    \'z'       : ['On: #{online_status}', 'Batt: #{battery_icon} #{battery_percentage}', '%R'],
    \'options' : {'status-justify' : 'left'}}
" }}}
"

let g:fzf_layout = { 'down': '~40%' }
" let g:fzf_colors =
" \ { 'fg':      ['fg', 'Normal'],
"   \ 'bg':      ['bg', 'Normal'],
"   \ 'hl':      ['fg', 'Comment'],
"   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"   \ 'hl+':     ['fg', 'Statement'],
"   \ 'info':    ['fg', 'PreProc'],
"   \ 'prompt':  ['fg', 'Conditional'],
"   \ 'pointer': ['fg', 'Exception'],
"   \ 'marker':  ['fg', 'Keyword'],
"   \ 'spinner': ['fg', 'Label'],
"   \ 'header':  ['fg', 'Comment'] }
"

fun! RemapPaneArrows()
  nnoremap <buffer> <silent> <Right> :vertical resize +5<cr>
  nnoremap <buffer> <silent> <Left> :vertical resize -5<cr>
  nnoremap <buffer> <silent> <Down> :resize +5<cr>
  nnoremap <buffer> <silent> <Up> :resize -5<cr>
endfun

augroup remappanesarrows
	autocmd!
	autocmd VimEnter,BufNewFile,BufReadPost,BufEnter * silent! call RemapPaneArrows()

augroup end
" }}}
" ##### Hard Mode {{{
"
fun! RemapArrows()
  inoremap <buffer> <silent> <Right> <nop>
  inoremap <buffer> <silent> <Left> <nop>
  inoremap <buffer> <silent> <Up> <nop>
  inoremap <buffer> <silent> <Down> <nop>

  vnoremap <buffer> <silent> <Right> <nop>
  vnoremap <buffer> <silent> <Left> <nop>
  vnoremap <buffer> <silent> <Up> <nop>
  vnoremap <buffer> <silent> <Down> <nop>
endfun
set completeopt-=preview
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set list
map <leader>ev :e! ~/.vimrc<cr>
let g:slime_paste_file = "$HOME/.slime_paste"
