" To register config update the path the the .vimrc 
" Example : 
"   :source ~/repos/vim/.vimrc
" dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/tjohnson4/.vim/autoload/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/tjohnson4/.vim/autoload')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
"call dein#add('chooh/brightscript.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('bling/vim-airline')
call dein#add('bling/vim-bufferline')
call dein#add('airblade/vim-gitgutter')
"call dein#add('crooloose/syntastic')
call dein#add('rking/ag.vim')
call dein#add('groenewege/vim-less')
call dein#add('suan/vim-instant-markdown')
call dein#add('mxw/vim-jsx')
call dein#add('Valloric/YouCompleteMe')
call dein#add('othree/html5.vim')
call dein#add('nikvdp/ejs-syntax')
call dein#add('lilydjwg/colorizer')
call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')
call dein#add('rizzatti/dash.vim')

" You can specify revision/branch/tag.
"call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

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
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

" mouse support 
set mouse=a

"let g:jsx_ext_required = 0 " Allow JSX in normal JS files
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

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
