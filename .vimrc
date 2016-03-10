" We need to make sure that vim is not attempting to retain compatibility with vi, its predecessor.
" This is a vundle requirement.
" When vim attempts to be compatible, it disables most of the features that make it worth using over vi.
set nocompatible

" We also want to turn off the default "filetype" controls for now 
" because the way that vim caches filetype rules at runtime 
" interferes with the way that vundle alters the runtime environment.
filetype off

" Adjust vim's runtime path to include the vundle location.
set rtp+=~/.vim/bundle/vundle/

" call the vundle initialization function:
call vundle#begin()

" Now, our vundle system is initialized and we can add in the plugins that we wish to manage.
" While vundle can manage local plugins,
" one of its strengths is the ability to tie local versions to online versions, which allows you to auto update, etc.

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'VundleVim/Vundle.vim'

" pretty status line
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'


Plugin 'itchyny/lightline.vim'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

Plugin 'altercation/vim-colors-solarized'

""  type an '(', ``autoclose`` will automatically insert a ')' and put the cursor between than.
Plugin 'Townk/vim-autoclose'

"" Perform all your vim insert mode completions with Tab
Plugin 'ervandew/supertab'

"" surroundings, parentheses, brackets, quotes, XML tags, and more.
Plugin 'tpope/vim-surround'

"" Comment/Uncomment Toggle
Plugin 'tomtom/tcomment_vim'

" Fuzzy file, buffer, mru, tag, etc finder. 
Plugin 'ctrlpvim/ctrlp.vim'

"" HTML and CSS Plugin 
Plugin 'mattn/emmet-vim'
"" RUBY STUFF "" 
Plugin 'tpope/vim-rails'

Plugin 'vim-ruby/vim-ruby'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" 
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"  ---------------------------------------------------------------------------
"  General
"  ---------------------------------------------------------------------------
syntax enable                     " Turn on syntax highlighting
syntax on
set number                        " This turns on line numbering
set hidden                        " Leave hidden buffers open
set history=100                   " by default is just 8
set encoding=utf-8
set autoindent
set smartindent
set showmode
set showcmd
set numberwidth=4                 " Set the line numbers to 4 spaces"
set backspace=indent,eol,start    " Make backspace behave in a sane manner.

"  ---------------------------------------------------------------------------
"  Settings for Plugins
"  ---------------------------------------------------------------------------

"" for vim-airline
set laststatus=2
"" Settings for Vim-Colors-Solarized
syntax on
" syntax enable
let g:solarized_termcolors=16
set t_Co=16
set background=dark
"set background=light
colorscheme solarized

"  ---------------------------------------------------------------------------
"  Text Formatting
"  ---------------------------------------------------------------------------
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set nowrap
set textwidth=79
set formatoptions=n

" check to make sure vim has been compiled with colorcolumn support
" before enabling it
if exists("+colorcolumn")
	set colorcolumn=80
endif

"  ---------------------------------------------------------------------------
"  Status Line
"  ---------------------------------------------------------------------------

" path
set statusline=%f
" flags
set statusline+=%m%r%h%w
" encoding
set statusline+=\ [%{strlen(&fenc)?&fenc:&enc}]
" rvm
set statusline+=\ %{rvm#statusline()}
" line x of y
set statusline+=\ [line\ %l\/%L]

" Colour
hi StatusLine ctermfg=Black ctermbg=White

" Change colour of statusline in insert mode
au InsertEnter * hi StatusLine ctermbg=DarkBlue
au InsertLeave * hi StatusLine ctermfg=Black ctermbg=White

"  ---------------------------------------------------------------------------
"  Mappings
"  ---------------------------------------------------------------------------
"
" Searching / moving
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

" Turn off arrow keys (this might not be a good idea for beginners, but it is
" the best way to ween yourself of arrow keys on to hjkl)

"  http://yehudakatz.com/2010/07/29/everyone-who-tried-to-convince-me-to-use-vim-was-wrong/
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>"
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap j gj
nnoremap k gk

" Map ESC
imap jj <ESC>

" Easy commenting
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

"  " Move between splits
"  nnoremap <C-h> <C-w>h
"  nnoremap <C-j> <C-w>j
"  nnoremap <C-k> <C-w>k
"  nnoremap <C-l> <C-w>l
"
"  " Move lines up and down
"  " map <C-J> :m +1 <CR>
"  " map <C-K> :m -2 <CR>
"
" Ignore some binary, versioning and backup files when auto-completing
set wildignore=.svn,CVS,.git,*.swp,*.jpg,*.png,*.gif,*.pdf,*.bak
" Set a lower priority for .old files
set suffixes+=.old

" Saving and exit
"  nmap <leader>q :wqa!<CR>
"  nmap <leader>w :w!<CR>
"  nmap <leader><Esc> :q!<CR>