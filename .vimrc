" Editor Config
syntax on

" default indentation
set ts=4 sts=4 sw=4 expandtab
set number
set linespace=0
set guifont=Fira\ Mono\ Medium\ for\ Powerline
set t_Co=256
set encoding=utf-8
set modifiable
set fileencoding=utf-8
set fileencodings=utf-8
scriptencoding utf-8

" syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" mouse support 
set mouse=a

let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" UtilSnips
let g:UltiSnipsExpandTrigger="<C-t>"
let g:UltiSnipsJumpForwardTrigger="<C-f>"
let g:UltiSnipsJumpBackwardTrigger="<C-b>"
let g:snips_author="Todd Johnson"
let g:snips_email="tjohnson4@gmail.com"
let g:snips_github="http://github.com/tjohnson4"

" YouCompleteMe 
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 0
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']
let g:ycm_key_invoke_completion = ''
let g:ycm_key_detailed_diagnostics = ''
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_use_ultisnips_completer = 1
let g:ycm_auto_trigger = 1


" Allow switching panes by holding down ctrl + hjkl direction key
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Change working directory with ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" make quick aliases for very magic searches
nnoremap / /\v
xnoremap / /\v
cnoremap %s/ %s/\v

" if vim compiled with autocommand support
if has("autocmd")
    " Enable file type detection
    filetype on

    " languages with required tab formats
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab

    " python house style tab formats 
    autocmd FileType python setlocal ts=2 sts=2 sw=2 expandtab
endif

" NERDTree + CtrlP Config
let NERDTreeChDirMode = 2
let ctrlp_working_path_mode = 'rw'

" Airline Config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 

" F Key Mappings 
map <F12> :NERDTreeToggle<CR>

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
if &compatible
 set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" Language Plugins
NeoBundle 'chooh/brightscript.vim'

" Git Plugin
NeoBundle 'tpope/vim-fugitive'

" Tools
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'bling/vim-bufferline'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'rking/ag.vim'
NeoBundle 'groenewege/vim-less'
NeoBundle 'suan/vim-instant-markdown'
NeoBundle 'mxw/vim-jsx'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'othree/html5.vim'
NeoBundle 'nikvdp/ejs-syntax'
NeoBundle 'lilydjwg/colorizer'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'rizzatti/dash.vim'

call neobundle#end()

" Required:
filetype plugin indent on
filetype plugin on
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
