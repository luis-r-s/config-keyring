" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Vim Wiki, an organizational tool
    Plug 'vimwiki/vimwiki'
    " A calendar app for vim
    Plug 'itchyny/calendar.vim'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " R session support much like in R Studio
    Plug 'jalvesaq/Nvim-R'
    " Lean & mean status/tabline for vim that's light as air.
    Plug 'vim-airline/vim-airline'
    " This is the official theme repository for vim-airline
    Plug 'vim-airline/vim-airline-themes'
    " Things you can do with fzf and Vim.
    Plug 'junegunn/fzf.vim'
    
call plug#end()

" settings :: vimwiki

let g:vimwiki_html_header_numbering = 2

let wiki = {
  \ 'name': 'Saturn Valley',
  \ 'path': '~/Saturn-Wiki',
  \ 'path_html':  '~/Saturn-Wiki/html',
  \ 'auto_export': 1,
  \ 'auto_toc': 1,
  \ 'index': 'index',
  \ 'ext': '.wiki',
  \ 'syntax': 'default',
  \ 'links_space_char': '_',
  \ 'template_path': '~/vimwiki/templates/',
  \ 'template_default': 'default',
  \ 'template_ext': '.tpl',
  \ 'css_name': 'style.css',
  \ 'nested_syntaxes': {'R': 'R', 'python': 'python', 'c++': 'cpp'},
  \ }

let g:vimwiki_list = [wiki]
let g:vimeiki_use_calendar = 0

" settings :: calendar.vim
let g:calendar_task_width = 40
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
source ~/.cache/calendar.vim/credentials.vim

" settings :: NERD TREE
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1

" settings :: vim-airline-themes
let g:airline_filetype_overrides = {
  \ 'help':  [ 'Help', '%f' ],
  \ 'nerdtree': [ get(g:, 'NERDTreeStatusline', 'NERD'), '' ],
  \ 'vim-plug': [ 'Plugins', '' ],
  \ }

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ' '
"let g:airline_symbols.linenr = ''
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.dirty=''

" settings :: Nvim-R plugin
" R output is highlighted with current colorscheme
let g:rout_follow_colorscheme = 1

" R commands in R output are highlighted
let g:Rout_more_colors = 1
