call plug#begin('~/.vim/plugged')

"colorschemes 
Plug 'dracula/vim'
Plug 'sjl/badwolf'
Plug 'jnurmine/Zenburn'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tomasr/molokai'
Plug 'ajmwagar/vim-deus'
Plug 'plasticboy/vim-markdown'

"""

"#####
"Helpers
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'zchee/deoplete-jedi'
" Plug 'alvan/vim-closetag'
"auto complete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'bfredl/nvim-miniyank'
  map p <Plug>(miniyank-autoput)
  map P <Plug>(miniyank-autoPut)
endif
"
Plug 'zchee/deoplete-clang'
"##########################
"IDE
Plug 'itchyny/lightline.vim'
"vim linter
Plug 'w0rp/ale'

Plug 'haya14busa/incsearch.vim'
"Tmux 
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'

if has('nvim')
  endif
Plug 'teranex/jk-jumps.vim'
Plug 'scrooloose/nerdtree'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ConradIrwin/vim-bracketed-paste'
" interactive scratchpad 
Plug 'metakirby5/codi.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-sleuth'
Plug 'airblade/vim-gitgutter'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

"Plug 'milkypostman/vim-togglelist'
" single line statement to multiple line 
Plug 'AndrewRadev/splitjoin.vim'
Plug 'majutsushi/tagbar'
"Comands like Delete, Rename
Plug 'tpope/vim-eunuch'
Plug 'duggiefresh/vim-easydir'

"Interactive scratchpad 
Plug 'junegunn/goyo.vim'
Plug 'wikitopian/hardmode'
Plug 'vimwiki/vimwiki'
" git plugin
Plug 'tpope/vim-fugitive'
" Support
" Make
Plug 'tpope/vim-dispatch'
"
" Plug 'embear/vim-localvimrc'
"Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-repeat'
"
Plug 'tpope/vim-surround'
" close parenthesis, brackets etc
Plug 'tpope/vim-unimpaired'
Plug 'Raimondi/delimitMate'
"Plug 'msanders/snipmate.vim'
Plug 'tomtom/tcomment_vim'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim' 
call plug#end()
let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_smart_case = 1



nmap <F8> :TagbarToggle <CR>
set shell =/bin/bash

"Show line number
set number
"Show cursor position
set ruler

"Show title
set title
set nohlsearch


"Enable syntax highlightning
set nocompatible
syntax on
" filetype plugin on 

"Display incomplete commands
set noshowcmd
" Display the mode you're in.
 set showmode
"
" " Intuitive backspacing.
set backspace=indent,eol,start

" " Handle multiple buffers better.
set hidden

" set ts=4 sw=4 et
"Enhanced command line completion
"
set wildmenu
set wildmode=list:longest
set wildignore+=*.o

"search
"
set ignorecase
set incsearch
set smartcase
set laststatus=2
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)


set t_Co=256
set background=dark
colorscheme deus

set cmdheight=1

" indentation
"
set autoindent
set smartindent

set noexpandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4

noremap <C-C> <Esc>

"mouse
set mousehide
set mouse=nicr

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
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = '⚠'
let g:ale_echo_msg_format = '%severity% %s% [%linter%% code%]'
let g:ale_lint_on_enter=1 

let mapleader = ","
let maplocalleader = "'"

nnoremap <leader>t :tabnew<cr>
nnoremap <leader>e :tabedit
nnoremap <leader>c :tabclose
nnoremap <leader>n :tabnext<cr>
nnoremap <leader>p :tabprevious<cr>
"
" nnoremap <C-P> :Files<cr>

nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
nmap <S-Enter> O<Esc>
"folding
nnoremap <Space> za
nnoremap z0 zR
nnoremap zC zM
nnoremap zc zc

set nobackup


set history=1000

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" augroup doxygen_comments
"     autocmd!
"     autocmd FileType c,cpp set comments^=:///
"   augroup end
"

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
      \ 'colorscheme': 'deus',
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
    \'z'       : ['On: #{online_status}', '#{battery_icon} #{battery_percentage}', '%R'],
    \'options' : {'status-justify' : 'left'}}
" }}}
"
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_working_path_mode = 'ra'

let g:fzf_layout = { 'down': '~40%' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


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
