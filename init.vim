call plug#begin()
Plug 'dracula/vim'
Plug 'elixir-lang/vim-elixir'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-compiler'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'vim-erlang/vim-erlang-tags'
Plug 'sjl/badwolf'
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'roxma/nvim-completion-manager'
Plug 'w0rp/ale'
Plug 'cohama/lexima.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

set guifont=VictorMono\ Nerd\ Font:h18

"colorscheme dracula
"autocmd BufEnter * colorscheme dracula
"set background=dark

colorscheme gruvbox
set background=dark

set hidden

set number
set relativenumber
set termguicolors

set mouse=a

set inccommand=split
set clipboard=unnamed

set expandtab
set shiftwidth=2

let mapleader="\<space>"

nnoremap <leader>; A;<esc>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

" ##### Erlang {{{
autocmd BufRead,BufNewFile *.erl set filetype=erlang
autocmd FileType erlang set shiftwidth=2
autocmd FileType erlang set tabstop=2
" }}}

" ##### Elixir {{{
autocmd BufRead,BufNewFile *.ex set filetype=elixir
autocmd BufRead,BufNewFile *.exs set filetype=elixir
autocmd FileType elixir set shiftwidth=2
autocmd FileType elixir set tabstop=2
" }}}
" }}}
