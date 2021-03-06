syntax enable

set pastetoggle=<F2>
set nocompatible " отключить совместимость с Vi
set hlsearch     " подсветка при поиске
set incsearch    " искать текст во время набора регулярного выражения
set ignorecase   " регистра независимый поиск
set smartcase
set number       " нумерация строк
set so=2         " минимальное число строк перед и после курсора, видимых при
                 " скроллировании текста
set ruler        " показывать положение курсора (Top, Bot, All, 45% ), номер
                 " строки и столбца
"set colorcolumn=+2
set laststatus=2
set tabstop=4     " сколько пробелов вставлять при нажатии клавиши <Tab> и при
                  " отображении табуляции
set softtabstop=4
set shiftwidth=4 " число пробелов при автоматическом форматировании
set noexpandtab " Make sure that every file uses real tabs, not spaces
set shiftround " Round indent to multiple of 'shiftwidth'
set smartindent " Do smart indenting when starting a new line
set autoindent " Copy indent from current line, over to the new line

set wrap         " 'ломать' длинные строки при отображении
"set listchars+=precedes:<,extends:>,tab:··
set listchars=tab:▏\ 
"set listchars=tab:\|•
"set listchars=tab:\ 
set list
"set autowrite    " автоматически сохранять файл когда это необходимо (:next,
                 " :rewind, :last, :first, :previous, :stop, :suspend, :tag,
                 " :!, :make, etc.)
set hidden
set ttyfast
set cinoptions=g0,N-s
set background=dark  " используем темный фон
set fileformats=unix " влияет на EOL
"set statusline=%<[%n]\ %f\ %m%r%h%w\ %y\ %{&fileencoding}%=%b\ \ \ %c/%v\ %l/%L\ \ %P\ %a " статусная строка
set langmap=йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,ж\\;,э',яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.,ё`,ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ъ},ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж:,Э\\",ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б<,Ю>,Ё~,ї],ґ\\\\,іs,є\\',’`,\\'~
set showmatch    " показывать открывающую скобку, когда печатаем закрывающую
set showmode     " показывать текущий режим (Insert, Replace или Visual)
set showcmd      " показывать команды в последней строке
set spl=ru,uk,en " Языки для spell
"set autochdir    " автоматически делать cd в дирректорию с редактируемым файлом
"set completeopt=longest,menuone,preview
set completeopt=menu
set guioptions-=T

set wildmenu
"set wildmode=longest:full
set wildmode=longest,list,full
set wcm=<Tab>

" tell vim to restore last cursor position on file open (cygwin doesn't have
" it by default somehow)
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "normal g'\"" | endif

" заменять today на дату
"iabbr today <C-R>=strftime("%d/%m/%Y (%H:%M)")<CR>
" очипятки :)
cabbr Wq wq
cabbr WQ wq
cabbr W w
cabbr Q q
cabbr йц wq
cabbr Йц wq
cabbr ЙЦ wq
cabbr ц w
cabbr Ц w
cabbr й q
cabbr Й q

"""
" Key bindings
"""
" переключение табов на ctrl+стрелки
nmap <C-l> :MBEbn<CR>
imap <C-l> <ESC>:MBEbn<CR>
nmap <C-h> :MBEbp<CR>
imap <C-h> <ESC>:MBEbp<CR>
"nmap <C-l> :tabnext<CR>
"imap <C-l> <ESC>:tabnext<CR>
"nmap <C-h> :tabprevious<CR>
"imap <C-h> <ESC>:tabprevious<CR>
"nmap <C-j> :-tabmove<CR>
"imap <C-j> <ESC>:-tabmove<CR>
"nmap <C-k> :+tabmove<CR>
"imap <C-k> <ESC>:+tabmove<CR>

let g:pep8_map='<F6>'

" подбор слов для исправления опечаток (spell checking)
nmap <F7> z=
imap <F7> <ESC>z=

" компиляция по F9
nmap <F9> :make<CR>
imap <F9> <ESC>:make<CR>i
nmap <F10> :make clean<CR>
imap <F10> <ESC>:make clean<CR>i
nmap <Leader>] :cnext<CR>
nmap <Leader>[ :cprevious<CR>

"map <F12> :!ctags -R --languages=c++ --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" disable right side keys
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <insert> <nop>
inoremap <delete> <nop>
inoremap <home> <nop>
inoremap <end> <nop>
inoremap <PageUp> <nop>
inoremap <PageDown> <nop>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
noremap <insert> <nop>
noremap <delete> <nop>
noremap <home> <nop>
noremap <end> <nop>
noremap <PageUp> <nop>
noremap <PageDown> <nop>


"""
" encoding menu
"""
menu Кодировка.utf-8        :e ++enc=utf-8 <CR>
menu Кодировка.windows-1251 :e ++enc=cp1251<CR>
menu Кодировка.koi8-r       :e ++enc=koi8-r<CR>
menu Кодировка.ibm-866      :e ++enc=ibm866<CR>
map <F8> :emenu Кодировка.<TAB>

""" fugitive Git 3-way merge
imap <M-l> <ESC>:diffget //3<CR>:diffupdate<CR>i
nmap <M-l> :diffget //3<CR>:diffupdate<CR>
imap <M-h> <ESC>:diffget //2<CR>:diffupdate<CR>i
nmap <M-h> :diffget //2<CR>:diffupdate<CR>

"""
" Settings for FileTypes
"""
" mail
autocmd FileType mail set spell
" revision controls
autocmd FileType svn set spell
autocmd FileType git set spell
autocmd FileType gitcommit set spell
" TeX/LaTeX
"autocmd FileType tex set langmap=''
autocmd FileType tex set makeprg=rubber\ --warn\ boxes\ -d\ %\ 2>&1\ \\\|\ sed\ 's/-.*:/:/'
autocmd FileType tex nmap <F10> :!rubber -d --clean %<CR>
autocmd FileType tex imap <F10> <ESC>:!rubber -d --clean %<CR>i
autocmd FileType tex nmap <F12> :!evince %<.pdf &<CR>
autocmd FileType tex imap <F12> <ESC>:!evince %<.pdf &<CR>i
autocmd FileType tex set tw=79
autocmd FileType tex set spell
" perl
autocmd FileType perl set keywordprg=perldoc
autocmd BufEnter *.pl,*.pm compiler perl
autocmd FileType perl compiler perl
autocmd BufEnter *.tt set filetype=tt2html
" python
autocmd FileType python set keywordprg=pydoc
"autocmd BufEnter *.py compiler python
"autocmd FileType python compiler python
autocmd FileType python IndentGuidesEnable
" haxe
"autocmd BufReadPost *.hx set syntax=haxe
" docs
autocmd BufReadPre  *.doc set ro
autocmd BufReadPost *.doc %!catdoc %
" po
autocmd FileType po nmap <F6> :call search('\(fuzzy\)\\|\( ""\n\n\)')<CR>
autocmd FileType po imap <F6> <ESC>:call search('\(fuzzy\)\\|\( ""\n\n\)')<CR>
" Qt
autocmd BufEnter *.qrc,*.qrc.in set filetype=xml
autocmd BufEnter *.ts set spell
" project specifics
autocmd BufRead */botikmon/* setlocal expandtab
autocmd BufRead */bp/bp/*html setlocal filetype=htmldjango

"""
" Templates
"""
autocmd BufNewFile  *.pl    0r ~/.vim/templates/perl
autocmd BufNewFile  *.py    0r ~/.vim/templates/python
autocmd BufNewFile  *.c     0r ~/.vim/templates/c
autocmd BufNewFile  *.cpp   0r ~/.vim/templates/c
autocmd BufNewFile  *.h     0r ~/.vim/templates/h
autocmd BufNewFile  *.hpp   0r ~/.vim/templates/h
autocmd BufNewFile  *.sh    0r ~/.vim/templates/sh
autocmd BufNewFile  *.html  0r ~/.vim/templates/html
autocmd BufNewFile  *.htm   0r ~/.vim/templates/html
autocmd BufNewFile  *.tex   0r ~/.vim/templates/tex
autocmd BufNewFile  *.dot   0r ~/.vim/templates/dot
autocmd BufNewFile  *.*     call s:format_template()
"autocmd BufReadPost *.*     call s:update_copyright()


"""
" Highlights
"""
" Подсвечивать пробелы в конце строки
"autocmd BufWinEnter * let m = matchadd("Error", "\\s\\+$")
" Подсвечивать пробелы перед табуляцией
autocmd BufWinEnter * let m = matchadd("Error", " \\+\t")
"autocmd BufWinEnter * let w:m1=matchadd('Search', '\%77v', -1)
autocmd BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%81v', -1)
"highlight Comment ctermfg=darkgrey
let python_highlight_all=1

"""
" GUI specicifs
"""
if has("gui_running") || has("nvim")
	if has("nvim")
		set mouse=a
		vmap <LeftRelease> "*ygv
	endif
	" Make shift-insert work like in Xterm
	map <S-Insert> <MiddleMouse>
	map! <S-Insert> <MiddleMouse>

	nmap <C-S-Insert> "+gp
	imap <C-S-Insert> <ESC>"+gpa

	if has('gui_gtk2')
		"set guifont=Terminus\ 15
		set guifont=Hack\ 9
	endif
endif

"""
" plugins settings
"""
"let g:airline#extensions#tabline#buffer_nr_show = 0
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#show_buffers = 0
"let g:airline#extensions#tabline#show_close_button = 0
"let g:airline#extensions#tabline#show_splits = 0
"let g:airline#extensions#tabline#tab_min_count = 0
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 2
let g:airline_mode_map = {
			\ '__' : '-',
			\ 'n'  : 'N',
			\ 'i'  : 'I',
			\ 'R'  : 'R',
			\ 'c'  : 'C',
			\ 'v'  : 'V',
			\ 'V'  : 'V',
			\ '' : 'V',
			\ 's'  : 'S',
			\ 'S'  : 'S',
			\ '' : 'S',
			\ }
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
"let g:rainbow_active = 1  " 0 if you want to enable it later via :RainbowToggle
let g:syntastic_aggregate_errors = 1
let g:syntastic_c_include_dirs = ['./app', 'libs']
let g:syntastic_cpp_checkers = ["gcc", "cppcheck"] " cpplint
let g:syntastic_cpp_compiler_options = ' -std=c++11'
let g:syntastic_cppcheck_config_file = "--enable=all"
let g:syntastic_enable_signs = 1
let g:syntastic_perl_lib_path = ['./lib', './lib/auto']
let g:syntastic_python_checkers = ["pep8", "pylint", "python"]
let g:syntastic_check_on_wq = 0
let g:ale_completion_enabled = 1
let g:ale_fixers = {
			\   '*': ['remove_trailing_lines', 'trim_whitespace'],
			\   'python': ['autopep8', 'isort'],
			\   'cpp': ['clang-format'],
			\   'c': ['clang-format'],
			\}
let g:ctrlp_custom_ignore = "build.*/"

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = '❱'
let g:airline_left_alt_sep = ''
let g:airline_right_sep = '❰'
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = '✗'
let g:airline_symbols.linenr = ''

vmap <Enter> <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)

let g:undotree_WindowLayout=4
let g:undotree_DiffCommand="diff --unified=1"
nnoremap <F5> :UndotreeToggle<cr>

nnoremap <F3> :TagbarToggle<cr>

"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)
"map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)

nnoremap <c-]> :CtrlPtjump<cr>
vnoremap <c-]> :CtrlPtjumpVisual<cr>

"""
" vundle
"""
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" https://github.com/gmarik/vundle/
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
Plugin 'gmarik/vundle'

" themes
"Plugin 'chriskempson/vim-tomorrow-theme'
"Plugin 'nanotech/jellybeans.vim'
Plugin 'morhetz/gruvbox'

" functionality
"Plugin 'Conque-GDB'
Plugin 'SirVer/ultisnips'
Plugin 'a.vim'
Plugin 'bling/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'danro/rename.vim'
Plugin 'dyng/ctrlsf.vim'
"Plugin 'easymotion/vim-easymotion'
Plugin 'ehamberg/vim-cute-python'
Plugin 'elzr/vim-json'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'fisadev/vim-ctrlp-cmdpalette'
Plugin 'glts/vim-magnum'
Plugin 'glts/vim-radical'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'gregsexton/gitv'
Plugin 'hdima/python-syntax'
Plugin 'honza/vim-snippets'
Plugin 'ivalkeen/vim-ctrlp-tjump'
Plugin 'junegunn/vim-easy-align'
Plugin 'luochen1990/rainbow'
Plugin 'majutsushi/tagbar'
Plugin 'mbbill/undotree'
Plugin 'mhinz/vim-signify'
Plugin 'mileszs/ack.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'pboettch/vim-cmake-syntax'
Plugin 'pep8'
Plugin 'peterhoeg/vim-qml'
Plugin 'po.vim'
Plugin 'powerman/vim-plugin-viewdoc'
Plugin 'python_import.vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'richq/vim-cmake-completion'
Plugin 'rrethy/vim-illuminate'
Plugin 'ryanoasis/vim-devicons'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sgur/ctrlp-extensions.vim'
Plugin 'tell-k/vim-autopep8'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'vasconcelloslf/vim-interestingwords'
Plugin 'vim-signature'
Plugin 'w0rp/ale'
Plugin 'wannesm/wmgraphviz.vim'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'zhaohuaxishi/ctrlp-header'

if has('nvim')
  Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif
Plugin 'Shougo/deoplete-clangx'
let g:deoplete#enable_at_startup = 1

filetype indent on
filetype plugin on

colorscheme gruvbox
if has("gui_running") || has('nvim')
	highlight Normal guibg=#100010
	highlight Tabs guibg=#1c1818 guifg=#2c2828
	autocmd BufWinEnter * let m = matchadd("Tabs", "\t")
endif

"""
" functions
"""
function! s:format_template()
	set report=999

	let filename = expand('%:t')
	let fullfilename = expand('%')
	execute '%s/%vim%filename%/' . filename . '/geI'
	let header_var = substitute(toupper(fullfilename), '[\.\/]', '_', 'ge')
	execute '%s/%vim%header_var%/' . header_var . '/geI'
	execute '%s/%vim%year%/\=strftime("%Y")/geI'
	"let filename_noext = expand("%:t:r")
	"execute "%s/%vim%filename_noext%/". filename_noext . "/geI"
	"let filename_ext = expand("%:e")
	"execute "%s/%vim%filename_ext%/". filename_ext . "/geI"

	set report=2
endfunction

function! s:update_copyright()
	let year = strftime("%Y")
	let name = "Max V. Stotsky"
	if match(readfile(expand("%:p")), "Copyright (C) " . year . " " . name) == -1
		set report=999
		execute '%s/\(Copyright (C) [0-9]\{4\}\) ' . name .'/\1-' . year . ' ' . name . '/geI'
		execute '%s/\(Copyright (C) [0-9]\{4\}\)-[0-9]\{4\} ' . name .'/\1-' . year . ' ' . name . '/geI'
		set report=2
	endif
endfunction

" vim -b : edit binary using xxd-format!
augroup Binary
	au!
	au BufReadPre  *.bin let &bin=1
	au BufReadPost *.bin if &bin | %!xxd
	au BufReadPost *.bin set ft=xxd | endif
	au BufWritePre *.bin if &bin | %!xxd -r
	au BufWritePre *.bin endif
	au BufWritePost *.bin if &bin | %!xxd
	au BufWritePost *.bin set nomod | endif
augroup END

let g:easytags_async = 1
set tags=./tags;
let g:easytags_dynamic_files = 1
