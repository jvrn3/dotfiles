set relativenumber
syntax on
set ruler "Show cursor position

" ======= SEARCH =======
set nohlsearch
set ignorecase
set title 
set smartcase

filetype plugin indent on
set updatetime=300
set hidden
set cursorline 
set wildmenu
set laststatus=2
set shortmess+=afilmnrxoOtT
set shiftwidth=4
set tabstop=4
set softtabstop=4
set mouse=a
" ======= INDENTATION =======
set autoindent
set smartindent
set smarttab
set expandtab
set noswapfile
set scrolloff=3
set spelllang=pt_br,en_us
set linebreak
set textwidth=110

set undolevels=1500

set lazyredraw

set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮

set autoread




noremap H ^
noremap L $

set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz,*.docx,*.ppt,*.odt
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class,*.jar,*.iso
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=.git,.hg,.svn


"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 15
"augroup ProjectDrawer
  "autocmd!
  "autocmd VimEnter * :Vexplore
"augroup END

