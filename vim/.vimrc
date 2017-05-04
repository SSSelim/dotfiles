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
Plugin 'editorconfig/editorconfig-vim'
" pretty status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'
" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'
"" awesome theme
Plugin 'altercation/vim-colors-solarized'
""  type an '(', ``autoclose`` will automatically insert a ')' and put the cursor between than.
Plugin 'Townk/vim-autoclose'
"" Perform all your vim insert mode completions with Tab
Plugin 'ervandew/supertab'
"" all trailing whitespace characters(spaces and tabs) to be highlighted
Plugin 'ntpeters/vim-better-whitespace'
"" visually displaying indent levels
Plugin 'nathanaelkane/vim-indent-guides'
"" pasting with indentation adjusted to destination context.
Plugin 'sickill/vim-pasta'
"" surroundings, parentheses, brackets, quotes, XML tags, and more.
Plugin 'tpope/vim-surround'
"" more % matching capabilities
Plugin 'tmhedberg/matchit'
"" Comment/Uncomment Toggle
Plugin 'tomtom/tcomment_vim'
"" Fuzzy file, buffer, mru, tag, etc finder.
Plugin 'ctrlpvim/ctrlp.vim'
"" syntax checking
Plugin 'scrooloose/syntastic'
"" HTML and CSS Plugin
Plugin 'mattn/emmet-vim'
"" ruby stuff
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
"" scala plugin
Plugin 'derekwyatt/vim-scala'

"" Markdown preview
Plugin 'suan/vim-instant-markdown'
" Plugin 'artur-shaik/vim-javacomplete2'
"" snippets engine
Plugin 'SirVer/ultisnips'
"" snippets
Plugin 'honza/vim-snippets'

"" Javascript Plugins
Plugin 'pangloss/vim-javascript'

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

" Abbreviations
abbr funciton function
abbr teh the
abbr tempalte template
abbr fitler filter
abbr rtfm read the fine manual
abbr #b /****************************************¬
abbr #e <space>****************************************/¬
abbr #m ```
abbr sout System.out.println();



set autoread                      " detect when a file is changed

" set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Ignore some binary, versioning and backup files when auto-completing
set wildignore=.svn,CVS,.git,*.swp,*.jpg,*.png,*.gif,*.pdf,*.bak
" Set a lower priority for .old files
set suffixes+=.old

set hidden                        " Leave hidden buffers open
set history=100                   " by default is just 8
set encoding=utf-8
set autoindent
set smartindent
set showmode
set backspace=indent,eol,start    " Make backspace behave in a sane manner.

"  ---------------------------------------------------------------------------
"  Text Formatting
"  ---------------------------------------------------------------------------
set textwidth=80
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nowrap
set formatoptions=n
"  ---------------------------------------------------------------------------
"  Searching
"  ---------------------------------------------------------------------------
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
"  ---------------------------------------------------------------------------
"  User Interface
"  ---------------------------------------------------------------------------
syntax enable                     " Turn on syntax highlighting
syntax on
set number                        " This turns on line numbering
set relativenumber
set numberwidth=4                 " Set the line numbers to 4 spaces"
set showcmd                       " show incomplete commands
set title                         " set terminal title

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

"  ---------------------------------------------------------------------------
"  Settings for Plugins
"  ---------------------------------------------------------------------------
"" vim-airline options
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

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"" settings for Vim-Colors-Solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set t_Co=256
set background=dark
colorscheme solarized

" check to make sure vim has been compiled with colorcolumn support
" before enabling it
if exists("+colorcolumn")
	set colorcolumn=+1
endif

"" syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers=['eslint']
"" :SyntasticToggleMode and :SyntasticCheck
"" :help syntastic-commands
silent! nmap <F6> :SyntasticToggleMode<CR>

" NERDTree plugin
map <C-n> :NERDTreeToggle<CR>


" UltiSnips Plugin Settings
" Trigger configuration. Do not use <tab> if you use
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my-snippets"]
" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

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
" hi StatusLine ctermfg=Black ctermbg=White

" Change colour of statusline in insert mode
au InsertEnter * hi StatusLine ctermbg=DarkBlue
au InsertLeave * hi StatusLine ctermfg=Black ctermbg=White

"  ---------------------------------------------------------------------------
"  Mappings
"  ---------------------------------------------------------------------------
" Turn off arrow keys (this might not be a good idea for beginners, but it is
" the best way to ween yourself of arrow keys on to hjkl)

" http://yehudakatz.com/2010/07/29/everyone-who-tried-to-convince-me-to-use-vim-was-wrong/
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

" instant markdown: manually trigger preview via the command :InstantMarkdownPreview
let g:instant_markdown_autostart = 0
"
"  ----------------------------------------------------------------------------
"  Experimenting
"  ----------------------------------------------------------------------------
" toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"" Paste MODE
nnoremap <F2> :set invpaste paste?<CR>  " maps F2 to invert paste mode in normal mode
set pastetoggle=<F2>                    " toggle paste mode in insert mode
set showmode                            " visual feedback
