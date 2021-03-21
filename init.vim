set relativenumber number
set showmode
set expandtab
set noswapfile
set incsearch
set signcolumn=yes
set softtabstop=2
set shiftwidth=2
autocmd vimenter * colorscheme gruvbox
let mapleader = " "

nmap <Leader>c :Econtroller<CR>
nmap <Leader>m :Emodel<CR>
nmap <Leader>d :ALEDetail<CR>

nmap <C-p> :Files<CR>
nmap <C-n> :NERDTreeToggle<CR>


call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-localorie'
Plug 'vim-ruby/vim-ruby'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
Plug 'gruvbox-community/gruvbox'
Plug 'elixir-editors/vim-elixir'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'theprimeagen/vim-be-good'
call plug#end()


let g:ale_set_highlights = 0
let $LANG='en_US.UTF-8'
