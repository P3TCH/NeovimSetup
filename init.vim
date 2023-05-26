:set mouse=a
:syntax on
:set number
:set autoindent
:set splitright
:set encoding=UTF-8
:set guifont=*
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
" Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'jiangmiao/auto-pairs'
Plug 'tomasiser/vim-code-dark'
Plug 'Mofiqul/vscode.nvim'
Plug 'pbondoer/vim-42header'
Plug 'dense-analysis/ale'
Plug 'github/copilot.vim'
call plug#end()

let g:vscode_style = "light"

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <C-]> :vertical resize -10<CR>
nnoremap <C-[> :vertical resize +10<CR>



nmap <F8> :TagbarToggle<CR>

:colorscheme codedark
:set completeopt-=preview " For No Previews

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = '▓▒'
let g:airline_left_alt_sep = '>'
let g:airline_right_sep = '▒▓'
let g:airline_right_alt_sep = '<'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.readonly = 'R'
let g:airline_symbols.linenr = 'L'
let g:airline_symbols.colnr = '✎'

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
