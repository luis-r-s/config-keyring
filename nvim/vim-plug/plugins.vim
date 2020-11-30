" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Things you can do with fzf and Vim.
    Plug 'junegunn/fzf.vim'
    " Distraction-free writing in Vim.
    Plug 'junegunn/goyo.vim'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " R session support much like in R Studio
    Plug 'jalvesaq/Nvim-R'
    " Dark, high-contrast color scheme for vim
    Plug 'bignimbus/pop-punk.vim'
    " Lean & mean status/tabline for vim that's light as air.
    Plug 'vim-airline/vim-airline'
    " This is the official theme repository for vim-airline
    Plug 'vim-airline/vim-airline-themes'
    " Vim Wiki, an organizational tool
    Plug 'vimwiki/vimwiki'
    
call plug#end()

" settings :: vimwiki

let g:vimwiki_html_header_numbering = 2
let g:vimwiki_html_header_numbering_sym = ')'

let wiki = {
  \ 'name': 'Saturn Valley',
  \ 'path': '~/Saturn-Wiki',
  \ 'path_html':  '~/Saturn-Wiki-html',
  \ 'auto_export': 0,
  \ 'auto_toc': 0,
  \ 'index': 'index',
  \ 'ext': '.wiki',
  \ 'syntax': 'default',
  \ 'links_space_char': ' ',
  \ 'template_path': '~/vimwiki/templates/',
  \ 'template_default': 'default',
  \ 'template_ext': '.tpl',
  \ 'css_name': 'style.css',
  \ 'nested_syntaxes': {'R': 'R', 'python': 'python'},
  \ }

let g:vimwiki_list = [wiki]


" settings :: NERD TREE
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1

" settings :: pop-punk.vim plugin
" colorscheme pop-punk
" hi Normal guibg=NONE ctermbg=NONE

" settign ansi colors for terminal
let g:terminal_ansi_colors = pop_punk#AnsiColors()

" settings :: vim-airline-themes
" let g:airline_theme = 'pop_punk'
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
