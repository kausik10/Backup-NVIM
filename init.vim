set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=0
set smarttab
set softtabstop=0
set mouse=a
set noerrorbells
set incsearch
set cursorline


call plug#begin()
Plug 'https://github.com/EdenEast/nightfox.nvim.git'
Plug 'https://github.com/Abstract-IDE/Abstract-cs.git'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
"Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/preservim/nerdtree' "NERDTree
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim.git' , " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/navarasu/onedark.nvim' " For theme I guess

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <Esc> :noh<CR>
nnoremap <C-b> :CHADopen<CR>
nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

:colorscheme PaperColor 
let g:NERDTreeDirArrowExpandable="+"

let g:NERDTreeDirArrowCollapsible="~"

source $HOME/.config/nvim/plug-config/coc.vim
" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

let g:neovide_cursor_vfx_mode = "sonicboom"

let g:neovide_scale_factor=0.8
function! ChangeScaleFactor(delta)
    let g:neovide_scale_factor = g:neovide_scale_factor * a:delta
endfunction
nnoremap <expr><C-=> ChangeScaleFactor(1.25)
nnoremap <expr><C--> ChangeScaleFactor(1/1.25)
