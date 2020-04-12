set number relativenumber
set showmode
" indentation
set expandtab
set softtabstop=2
set shiftwidth=2
" indentation for go
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
colorscheme slate

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
call plug#end()
" fzf
" nmap <C-p> :Files<CR>
map <C-n> :NERDTreeToggle<CR>
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\}
let g:ale_set_highlights = 0

set rtp+=/usr/local/opt/fzf
