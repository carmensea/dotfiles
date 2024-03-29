set nocompatible               " be iproved
filetype off                   " required!

"use ; in addition to : for vim commands
:nmap ; :

set clipboard=unnamedplus
set runtimepath^=~/.vim/bundle/ctrlp.vim

set encoding=utf-8
"set t_Co=256
"set fillchars+=stl:\ ,stlnc:\
"set term=xterm-256color
set termencoding=utf-8

" sets color for visual mode and cursor background color
highlight Visual cterm=bold ctermbg=Red ctermfg=green
"set cursorline
"hi CursorLine guifg=NONE guibg=#2d3c45 ctermbg=239 gui=NONE term=NONE cterm=NONE

" ctrl a  moves lines up, ctrl ] moves lines down.
" Works in normal or visual select modes.
nmap <C-a> [e
nmap <C-z> ]e
vmap <C-a> [egv
vmap <C-z> ]egv

"highlight link SyntasticError SpellBad
"highlight link SyntasticWarning SpellCap

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Manage Plugins
Plugin 'VundleVim/Vundle.vim'                    "Vim plugin manager

"Autocomplete Plugins
"Plugin 'alvan/vim-closetag'
Plugin 'tpope/vim-surround'               "Adds 'cs' command to change pair characters
Plugin 'Townk/vim-autoclose'              "Adds closing pairs
"Plugin 'mg979/vim-visual-multi'           "Multiple cursors when editing
"Plugin 'mattn/emmet-vim'
"Plugin 'mattn/webapi-vim'
Plugin 'tpope/vim-endwise'                "Adds end in ruby

"Navigation Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'          "Nerdtree doesn't work without this
Plugin 'scrooloose/nerdcommenter'         "Adds easy comment and uncomment
Plugin 'christoomey/vim-tmux-navigator'   "Navigates between panes
Plugin 'easymotion/vim-easymotion'        "Search in file with /
Plugin 'ctrlpvim/ctrlp.vim'               "Tag generator
Plugin 'majutsushi/tagbar'                "Shows list of methods in new pane

"Functional Plugins
Plugin 'itchyny/lightline.vim'            "Bottom line to display mode and file info
Plugin 'esneider/YUNOcommit.vim'          "Reminder to commit msg
Plugin 'wincent/command-t'                "Fuzzy search for vim, requires same vim ruby as rvm version
Plugin 'thoughtbot/vim-rspec'
Plugin 'benmills/vimux'                   "Run Tmux commands from vim in 20% window
Plugin 'vim-airline/vim-airline'          "Status bar for vim
Plugin 'vim-airline/vim-airline-themes'

"Git Plugins
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive', {'on': []}               "Adds git commands like :Gdiff, :Gstatus

"Search Plugins
Plugin 'tpope/vim-unimpaired'
Plugin 'mileszs/ack.vim'

"Syntax Highlighting Plugins
Plugin 'scrooloose/syntastic'
Plugin 'gcorne/vim-sass-lint'
Plugin 'tpope/vim-rails'                  "Syntax + error highlight for rails
Plugin 'tpope/vim-haml'                   "Syntax highlight for haml
Plugin 'quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript'
Plugin 'dense-analysis/ale'
Plugin 'chemzqm/vim-jsx-improve'
Plugin 'jason0x43/vim-js-indent'
Plugin 'prettier/vim-prettier'
Plugin 'ngmy/vim-rubocop'
Plugin 'jaxbot/semantic-highlight.vim'

call vundle#end()
filetype plugin indent on "req

"Vim Multiple Cursors Bindings
let g:syntastic_sass_checkers=["sasslint"]
let g:multi_cursor_use_default_mapping=0
" Default mapping
"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_next_key='<C-x>'
let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
"6 characters before you complete me kicks in
let g:ycm_min_num_of_chars_for_completion = 6
"python from powerline.bindings.vim impor 'source_plugin; source_plugin()
let g:nerdtree_tabs_open_on_console_startup=0
let NERDTreeShowHidden=1
"colorscheme solarized
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"
let g:closetag_emptyTags_caseSensitive = 1
"displays all errors from all checkers together
let g:syntastic_aggregate_errors = 1
let g:vim_jsx_pretty_colorful_config = 1
" let g:airline#extensions#labline#left_sep = ' '
"let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline_statusline_ontop=1
let g:airline_theme='raven'
let g:tsuquyomi_completion_detail = 1
set background=dark

if has('gui_running')
  set guifont=Inconsolata\ 13    " set fonts for gui vim
  set guioptions=egmrt           " hide the gui menubar
endif

" ARROW KEYS ARE UNACCEPTABLE
"  map <Left> :echo "no!"<cr>
"  map <Right> :echo "no!"<cr>
"  map <Up> :echo "no!"<cr>
"  map <Down> :echo "no!"<cr>

" save and save quit
  command! W :w
  command! Q :q
  command! Wq :wq
  command! WQ :wq

" Map ctrl-movement keys to window switching
 map <C-k> <C-w><Up>
 map <C-j> <C-w><Down>
 map <C-l> <C-w><Right>
 map <C-h> <C-w><Left>
 map <C-n> <plug>NERDTreeTabsToggle<CR>
 map <C-m> :TagbarToggle<CR>
 "To get copy and paste to work, you need to have +clipboard for vim
 "brew vim options
 "brew install vim --with-client-server
 "this sets +clipboard
vnoremap <C-t> "*y
nnoremap <C-p> "+gP"
vnoremap <C-p> "+gP"
vnoremap <silent> <leader>l :<C-U>REPLSendLine<cr>
cmap w!! %!sudo tee > /dev/null/ %

set backspace=indent,eol,start
set history=100

set number        " Show line numbers
set nowrap        " Turn off Text Wrap
set scrolloff=3   " Keep more context when scrolling off the end of a buffer
set ruler         " show the cursor position all the time
set wildmenu      " Make tab completion for files/buffers act like bash
set showcmd       " display incomplete commands
set hidden        " keep undo history for background buffers
set autoread      " autoamically read the file again when it is changed externally
set showtabline=2 " always show tab bar
set term=cons25   " fix issue with arrow keys

" Editting configuration
syntax enable
set pastetoggle=<F2>
set term=screen-256color
set ts=2
set smarttab
set showmatch
set encoding=utf-8
set noshowmode
set backup
set backupdir=~/.vim/backups
set directory=~/.vim/tmp
set noerrorbells
set belloff=all
set timeoutlen=350
"set mousehide
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

"enable fold based on indent with max level of 10
set foldmethod=indent
set foldnestmax=2
set foldlevel=100000
set foldenable

set undofile                                      "allow per file undo persistance
set undoreload=10000
set undodir=~/.vim/tmp/undo//                     "undo dir
set backupdir=~/.vim/tmp/backups//                "backup dir -- // saves full filepath with % as folder delimeter
set directory=~/.vim/tmp/swap//                   "temporary dir for swap files
set backup                                        "file backups enabled
set writebackup                                   "enabling backups
set noswapfile                                    "disable swaps - were using backups in 2017

" if undo and backup directories do not exist, make them
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif

set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮  "show unicode characters for tab,eol,and with wrap on
set showbreak=↪

if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif
nnoremap <leader>ww mz:%s/\s\+$//<cr>:let @/=''<cr>`z
"clears eol whitespace

nmap <f3> :TagbarToggle<CR>

" set smartindent
set laststatus=2
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
set title

"Search Stuff
set hlsearch  " highlight previous search matches
set incsearch " search as you type
" Make searches case-sensitive only if they contain upper-case characters
set ignorecase
set smartcase
"pressing enter key in command mode removes search highlighting
nnoremap <CR> :nohlsearch <CR>
nnoremap Q <nop>

"set mouse=a

"Highlight trailing whitespace in red
:highlight ExtraWhitespace ctermbg=red guibg=red
:au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
:au InsertLeave * match ExtraWhitespace /\s\+$/
:match ExtraWhitespace /\s\+$/           " Show trailing whitespace
:match ExtraWhitespace /\s\+$\| \+\ze\t/ " Show trailing whitespace and spaces before a tab
:match ExtraWhitespace /[^\t]\zs\t\+/    " Show tabs that are not at the start of a line

"Automatically strip trailing whitespace on save
"autocmd BufWritePre * %s/\s\+$//e

cnoreabbrev td tab drop

" tslime.vim - Specs running in Tmux
let g:rspec_command = 'call Send_to_Tmux("bundle exec rspec {spec}\n")'

" RSpec.vim mappings
map <Leader>w :call RunCurrentSpecFile()<CR>
map <Leader>g :call RunNearestSpec()<CR>
map <Leader>q :call RunLastSpec()<CR>
map <Leader>m :call RunAllSpecs()<CR>

"Open spec file in vertical pane
map <Leader>s :vs<CR>\| :A<CR>

"Spring rspec
"let g:rspec_command = '!spring rspec {spec}'
let g:rspec_command = '!RAILS_ENV=test bundle exec rspec {spec} --color --profile'

let g:calendar_google_calendar = 1
let g:calendar_google_task = 1


" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

:nnoremap <LeftMouse> m'<LeftMouse>
:nnoremap <LeftRelease> <LeftRelease>g``

"use ag for ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"do not have ack jump to first response
cnoreabbrev Ack Ack!
"ack for the current word under cursor
nnoremap <Leader>a :Ack!<Space><C-R><C-W>

set mouse+=a
if &term =~ '^screen'
  " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

" tmux knows the extended mouse mode
nnoremap <leader>. :CtrlPTag<cr>
" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }" Ignore some folders and files for CtrlP indexing

let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'


"Ctags
"map \c to run ctags in folder
map <Leader>c :! ctags -R -f ./.git/tags .<CR>
" Ctrl+[ to so that manuevering ctags is simply Ctrl+] to go down and Ctrl+[ to go up
nnoremap <Leader>[ <C-j>
nnoremap <Leader>] <C-]>

" Auto open tagbar
"autocmd VimEnter * nested :call tagbar#autoopen(1)
nmap <F8> :TagbarToggle<CR>

nmap <F12> :vs ~/github.com/carmensea/dotfiles/Sharpen.md

"Emmet Plugin
"let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.snippets.json')), "\n"))

map <F10> :set invnumber

vnoremap <silent> <leader>l :<C-U>REPLSendLine<cr>
set tags=tags
