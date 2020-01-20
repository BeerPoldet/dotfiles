set number
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2
set smartindent
set autoindent
set ruler
set laststatus=2
set noshowmode
set noswapfile

" Copy paste with MacOS
vmap <Leader>yy y:call system("pbcopy", getreg("\""))<CR>
map <Leader>pp mz:-1r !pbpaste clip<CR>

" Prettier
nmap <Leader>po <Plug>(Prettier)
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'false'

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'wincent/scalpel'
Plug 'kien/ctrlp.vim'
Plug 'maralla/completor.vim'
Plug 'vim-syntastic/syntastic'
Plug 'keith/swift.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-ruby/vim-ruby'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

call plug#end()

filetype plugin indent on
syntax on
colorscheme onedark
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
if !has('gui_running')
  set t_Co=256
endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_swift_checkers = ['swiftpm', 'swiftlint']
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git'
" check one time after 4s of inactivity in normal mode
set autoread
au CursorHold * checktime
