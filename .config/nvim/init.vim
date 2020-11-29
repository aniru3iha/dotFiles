" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'chrisbra/Colorizer'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

call plug#end()


" basic settings
set clipboard+=unnamedplus
set showcmd
set hidden
set modelines=0
set noshowmode
set number relativenumber
set ruler
set scrolloff=7

set path=**


" Colorizer
let g:colorizer_auto_color = 1
let g:colorizer_skip_comments = 1

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


let g:startify_custom_header = [
        \ '                                 ',
        \ '            __                   ',
        \ '    __  __ /\_\    ___ ___       ',
        \ '   /\ \/\ \\/\ \ /'' __` __`\    ',
        \ '   \ \ \_/ |\ \ \/\ \/\ \/\ \    ',
        \ '    \ \___/  \ \_\ \_\ \_\ \_\   ',
        \ '     \/__/    \/_/\/_/\/_/\/_/   ',
        \ '                                 ',
        \ ]


" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


" my bindings
map <leader>l :set spell<CR>
map <leader>L :set nospell<CR>
map <leader>s :w<CR>

map <leader>gT :bnext<CR>
map <leader>gt :bprevious<CR>
