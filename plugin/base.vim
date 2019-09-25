" Don't try to be backwards compatible
set nocompatible

" Load file-type specific plugins and indent definitions
filetype plugin indent on

" Put temp files in common directory
" http://stackoverflow.com/a/9528322/547212
" If you have .vim-backup in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/backup or . if all else fails.
if isdirectory($HOME . '/.vim/backup') == 0
  :silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup

" Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.vim/swap') == 0
  :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

" viminfo stores the the state of your previous editing session
set viminfo+=n~/.vim/viminfo

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif

set autoread

set ttyfast

" Speed up Esc delay
set ttimeout
set ttimeoutlen=20
set notimeout

" Enable mouse support
set ttymouse=xterm2
set mouse=a

" Use system clipboad by default
set clipboard=unnamed

" Line numbers
set number

" Set wild menu
set wildmenu
set wildmode=longest,list,full
set wildignore+=*/.hg/*,*/.svn/*,*/tmp/cache/*,*/target/*,*/.idea/*,*/.settings/*,*/test-output/*,*/.scala_dependencies,*.class

" Use 2-space tabs
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

