" plugin sourcing
source $HOME/.config/nvim/vim-plug/plugins.vim

"vim config set statements
syntax on

set nocompatible
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set scrolloff=8
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to files

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

hi Normal guibg=NONE ctermbg=NONE
set tw=80

" Having gx open links in qutebrowser
let g:netrw_browsex_viewer= "qutebrowser"

" Toggle Hiding status info
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
        set nonu nornu
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
        set nu rnu
    endif
endfunction

" remmapings
let mapleader= " "
nnoremap <silent><Leader>h :call ToggleHiddenAll()<CR>
nnoremap <silent><Leader>n :NERDTreeToggle<CR>
nnoremap <silent><Leader>g :Goyo<CR>
