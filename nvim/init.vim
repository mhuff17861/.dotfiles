source ~/.config/nvim/plugins.vim
set t_Co=256

" Python highlighting
let python_highlight_all=1

set background=dark

" Jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set showcmd		" Show (partial) command in status line.
set smartcase	" Do smart case matching
set autowrite	" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned

set spell spelllang=en_us
set spellfile=~/.vim/spell/en.utf-8.add
set nospell

set laststatus=2

set hlsearch

set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

set switchbuf=useopen,usetab,newtab
set ignorecase
set smartcase

try
  set undodir=~/.vim_runtime/temp_dirs/undodir
  set undofile
catch
endtry

" ignore specified files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1

" remove header from startify
let g:startify_custom_header = []

" solve meta key not working
let c='a'
set timeout ttimeoutlen=50

let mapleader = ","
let g:mapleader = ","

set encoding=utf-8

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" sudo save to avoid permission denied
command W w !sudo tee % > /dev/null

" Always show current position
set ruler

set nu
" Relative numbers when not in insert mode,
" normal line numbers when in insert mode
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

set nobackup
set nowb
set noswapfile

" Be smart when using tabs
set smarttab

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Use spaces instead of tabs
set expandtab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Access system clipboard
set clipboard=unnamed

" python PEP8 indentation standards
au BufNewFile,BufRead *.py
      \ set tabstop=4 |
      \ set softtabstop=4 |
      \ set shiftwidth=4 |
      \ set textwidth=79 |
      \ set expandtab |
      \ set autoindent |
      \ set fileformat=unix

" 2 space tab indentation
au BufNewFile,BufRead *.html,*.tex,*.vim
      \ set tabstop=2 |
      \ set softtabstop=2 |
      \ set shiftwidth=2

" Highlight unecessary whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Useful mappings for managing tabs
map <leader>tn :tabnew .<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" for splits
set splitright
set splitbelow
map <leader>vp :vsplit .<cr>
map <leader>hp :split .<cr>

" Insert empty line
nmap <C-o> o<Esc>

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//e
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()

" Toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" incsearch remappings
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" incsearch intelligent nohl
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

set path=.,,**

colorscheme gruvbox

let g:lightline = {}
let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }
let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }
let g:lightline.active = { 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]] }
let g:lightline.colorscheme = 'gruvbox'
