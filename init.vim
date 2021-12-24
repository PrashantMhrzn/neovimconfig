:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/tpope/vim-fugitive.git' " Git
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/rafi/awesome-vim-colorschemes.git' " Color schemes
Plug 'jiangmiao/auto-pairs' " Bracket pair
Plug 'https://github.com/preservim/tagbar' " Tagbar
Plug 'glepnir/dashboard-nvim' " Dashboard
Plug 'https://github.com/junegunn/fzf.vim' " Dependency for Dashboard
Plug 'https://github.com/tpope/vim-commentary' " GCC comment line/lines
Plug 'terryma/vim-multiple-cursors' " Multiple cursors
Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons

set encoding=UTF-8

call plug#end()

colorscheme afterglow

" Tagbar toggle
nmap <F8> :TagbarToggle<CR>

" NERDTree Key bindings
nnoremap <C-f> :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit nvim if only NERDTree is left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE
