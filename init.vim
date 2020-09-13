set number relativenumber
set showmode
" indentation
set expandtab
set softtabstop=2
set shiftwidth=2
autocmd vimenter * colorscheme gruvbox
" indentation for go
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

nnoremap <Leader>c :Econtroller<CR>
nnoremap <Leader>d :ALEDetail<CR>

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
Plug 'morhetz/gruvbox'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'elixir-editors/vim-elixir'
call plug#end()
" fzf
nmap <C-p> :Files<CR>
map <C-n> :NERDTreeToggle<CR>
let g:ale_set_highlights = 0
let $LANG='en_US.UTF-8'

set rtp+=/usr/local/opt/fzf
