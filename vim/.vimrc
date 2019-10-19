" Plugins {{{
" a vundle requirement
set nocompatible

" We also want to turn off the default "filetype" controls for now
" because the way that vim caches filetype rules at runtime
" interferes with the way that vundle alters the runtime environment.
filetype off

" Adjust vim's runtime path to include the vundle location
set rtp+=~/.vim/bundle/Vundle.vim
" If installed using git
set rtp+=~/.fzf

" call the vundle initialization function:
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'

Plugin 'Townk/vim-autoclose'
Plugin 'ervandew/supertab'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'sickill/vim-pasta'
Plugin 'tpope/vim-surround'
Plugin 'tmhedberg/matchit'
Plugin 'tomtom/tcomment_vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/fzf.vim'

" Plugin 'pangloss/vim-javascript'
Plugin 'derekwyatt/vim-scala'
Plugin 'mattn/emmet-vim'                         " HTML and CSS Plugin
Plugin 'suan/vim-instant-markdown'

Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'                        " snippets engine
Plugin 'honza/vim-snippets'                      " snippets
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'tpope/vim-fugitive'

Plugin 'fatih/vim-go'

Plugin 'vim-latex/vim-latex'

Plugin 'cespare/vim-toml'

call vundle#end()
filetype plugin indent on    " required, file type detection and do language-dependent indenting

" remove this after updating vim version
let g:go_version_warning = 0

" :PluginInstall
" :PluginUpdate
" :PluginClean
" }}}

"  General {{{
set suffixes+=.old                " Set a lower priority for .old files
set autoread                      " detect when a file is changed
set hidden                        " Leave hidden buffers open
set history=100                   " history of last 100 ex commands
set encoding=utf-8
set autoindent
set infercase                     " for autocompletion
set smartindent
set showmode
set modelines=1                   " number of modeline to check
set backspace=indent,eol,start    " Make backspace behave in a sane manner.
" Ignore some binary, versioning and backup files when auto-completing
set wildignore=.svn,CVS,.git,*.swp,*.jpg,*.png,*.gif,*.pdf,*.bak
" }}}
" Text Formatting {{{
set textwidth=80
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nowrap
set formatoptions=n
"}}}
" Searching {{{
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
" }}}
"  User Interface {{{
syntax enable                     " Turn on syntax highlighting
syntax on
set number                        " This turns on line numbering
set relativenumber
set numberwidth=4                 " Set the line numbers to 4 spaces"
set showcmd                       " show incomplete commands
set title                         " set terminal title
set wildmenu                      " tab, c^p, s-tab, c^n
set wildmode=full                 " ex commands zsh style autocomplete
set cursorline                    " horizontal line

" make the highlighting of tabs and other non-text less annoying
highlight SpecialKey ctermbg=none ctermfg=8
highlight NonText ctermbg=none ctermfg=8

" disable background color erase
if &term =~ '256color'
  set t_ut=
endif

" enable 24 bit color support if supported
if (empty($TMUX) && has("termguicolors"))
  set termguicolors
endif

" make sure vim has been compiled with colorcolumn support before enabling it
if exists("+colorcolumn")
  set colorcolumn=+1
endif
"  ---------------------------------------------------------------------------
"  Status Line
"  ---------------------------------------------------------------------------
set statusline=%f              " path relative
set statusline+=%m%r%h%w       " flags
set statusline+=\ [%{strlen(&fenc)?&fenc:&enc}] " encoding
set statusline+=\ [line\ %l\/%L] " line x of y
" }}}
" Settings for Plugins {{{
"
" vim-go
let g:go_fmt_options = 0 " turn off autoformating on save

" vim-airline options
set laststatus=2
set t_Co=256
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled = 1 " enable airline tabline
let g:airline#extensions#tabline#tab_min_count = 2 " only show tabline if tabs are being used (more than 1 tab open)
let g:airline#extensions#tabline#show_buffers = 0 " do not show open buffers in tabline
let g:airline#extensions#tabline#show_splits = 0

if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Vim-Colors-Solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set t_Co=256
set background=dark
colorscheme solarized

" syntastic plugin
silent! nnoremap <F6> :SyntasticToggleMode<CR>
nnoremap <F5> :SyntasticCheck<CR>
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_loc_list_height = 5
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }

" UltiSnips Plugin Settings
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my-snippets"]
" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" instant markdown: manually trigger preview via the command :InstantMarkdownPreview
let g:instant_markdown_autostart = 0

" ctrlp settings
let g:ctrlp_root_markers = ['pom.xml', 'build.sbt']
set wildignore+=target/

nnoremap <c-n> :NERDTreeToggle<CR>

" Easy commenting
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

" figutive settings
nnoremap \gs :Gstatus<CR>
nnoremap \gw :Gwrite<CR>
nnoremap \gc :Gcommit<CR>
nnoremap \gd :Gdiff<CR>

" }}}
"  Mappings {{{
let mapleader = ","

" swap colon and semicolon, save yourself from one keystroke
nnoremap ; :
nnoremap : ;

nnoremap <space> za

" map ESC to exit insert mode
inoremap jk <esc>

" move line downward
nnoremap <leader>- ddo<ESC>p

nnoremap <leader>h :History<cr>
nnoremap <leader>l :buffers<CR>:buffer<Space>
nnoremap <leader>b :CtrlPBuffer<CR>

" jump over closing " ) } ]
inoremap \j      <esc>la
inoremap \r      =><space>
nnoremap \l      :<C-u>nohlsearch<CR>
inoremap \n      ()<left>
inoremap \c      {}<left>
inoremap \s      []<left>
inoremap \cf     {<CR> <CR>}<up><tab>
nnoremap \es     !scala<CR>

inoremap {<CR> {<CR> <CR>}<up><right><right>

" F3, c is the third letter
nnoremap <F3> :!ctags -R<CR>

" c^ doesnt filter the history, best of both
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" builtin <c-r>+
inoremap <c-v> <esc>"+pi
" delete line in insert mode
inoremap <c-d> <esc>ddi

" make it easier to edit vimrc: Edit Vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>ez :vsplit ~/.zshrc<cr>
nnoremap <leader>et :vsplit ~/.tmux.conf<cr>

" surround the word in double quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

" turn off arrow keys, force yourself to use hjkl
noremap <Left>   :echoe "Use h"<CR>
noremap <Right>  :echoe "Use l"<CR>
noremap <Up>     :echoe "Use k"<CR>
noremap <Down>   :echoe "Use j"<CR>

nnoremap j gj
nnoremap k gk

" golang mappings
nnoremap gor :GoRun<CR>

" stupid shift
" 'a' to 'z' map { c => s"inoremap ${c}${c}${c} ${c.toUpper}" } foreach println

" }}}
" Splits {{{
" vertical split:vsp
" horizont split:sp
" heighted split:10sp

" more natural split opening
set splitbelow
set splitright

" Easier Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
" }}}
" Experimenting {{{
" toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" automatically execute ctags each time a file is saved
"autocmd BufWritePost * call system("ctags -R")

nnoremap <F2> :set invpaste paste?<CR>  " maps F2 to invert paste mode in normal mode
set pastetoggle=<F2>                    " toggle paste mode in insert mode
" }}}
" vim:foldmethod=marker:foldlevel=0
