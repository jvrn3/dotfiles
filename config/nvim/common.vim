" TODO: comment all lines explaining the commands
set number relativenumber
set ruler "Show cursor position

set encoding=UTF-8
" ======= SEARCH =======
set nohlsearch
set ignorecase " the case of normal letters is ignored
set title
set smartcase " if the search contains upper case letter, ignorecase is disabled
set inccommand=nosplit  " Shows the effects of a command incrementally
set termguicolors


set signcolumn=number
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
set colorcolumn=90
set undolevels=1500

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

set lazyredraw

set list
set listchars=tab:→\ ,trail:⋅,extends:❯,precedes:❮

set autoread

set wildmode=longest,list,full

set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz,*.docx,*.ppt,*.odt
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class,*.jar,*.iso
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=.git,.hg,.svn


autocmd FileType tex, latex, markdown, txt setlocal spell=en_US
autocmd BufWritePre * %s/\s\+$//e
