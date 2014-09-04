" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif
set completeopt=longest,menu
" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
set shiftwidth=4
set softtabstop=4
set showcmd
set smartcase
set smartindent
set ignorecase
set tabstop=4
set autoindent
set hlsearch
set showmatch
set incsearch
set cursorline
hi CursorLine	cterm=NONE ctermbg=darkred ctermfg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white
set ruler
set nu
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set encoding=prc

if has("tags")
    set tags=tags
endif

"add vim plugin manager pathogen
call pathogen#infect()

"Tlist config
"copy from internet
let Tlist_Ctags_Cmd='/usr/local/bin/ctags' 
let Tlist_Show_One_File=1
let Tlist_OnlyWindow=1
let Tlist_Use_Right_Window=0
let Tlist_Sort_Type='name'
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_Menu=1
let Tlist_Max_Submenu_Items=10
let Tlist_Max_Tag_length=20
let Tlist_Use_SingleClick=0
let Tlist_Auto_Open=0
let Tlist_Close_On_Select=0
let Tlist_File_Fold_Auto_Close=1
let Tlist_GainFocus_On_ToggleOpen=0
let Tlist_Process_File_Always=1
let Tlist_WinHeight=10
let Tlist_WinWidth=18
let Tlist_Use_Horiz_Window=0
nmap tl :TlistToggle<cr>

"win manager conf
let g:winManagerWindowLayout='FileExplorer|TagList'

let g:persisitentBehaviour=0
let g:windowManagerWidth=20
let g:defaultExplorer=1
nmap fir :FirstExplorerWindow<cr>
nmap bot :BottomExplorerWindow<cr>

nmap wm :WMToggle<cr>
"nmap <F3>:WMToggle<cr>
"
"minibuffer configuration
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
"quick file configuration
set cscopequickfix=s-,c-,d-,i-,t-,e-
"cscope configuration
nmap <C-x>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-x>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-x>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-x>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-x>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-x>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-x>i :cs find i ^<C-R>=eptend("<cfile>")<CR>$<CR>
nmap <C-x>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"nmap <F6>:cn<cr>
"nmap <F7>:cp<cr>
"Source a global configuration file if available
"showmarks configuration
let showmarks_enable = 1
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ01234567890"
let showmarks_ignore_type = "hqm"
let showmarks_hlline_lower = 1
let showmarks_hlline_upper = 1

nmap <silent> <leader>bm :MarksBrowser<cr> 

"add snippets
filetype on
filetype plugin on
set runtimepath+=~/.vim/textmateOnly
set runtimepath+=~/.vim/textmateOnly/after
set runtimepath+=~/.vim/emmet-vim
set runtimepath+=~/.vim/emmet-vim/autoload

"webapi-vim
set runtimepath+=~/.vim/webapi-vim
set runtimepath+=~/.vim/webapi-vim/autoload

"emmet vim use
"let g:user_emmet_expandabbr_key = '<Tab>'

"redefine trigger key
"to remap the default '<C-Y>' leader
"let g:user_emmet_leader_key='<C-Z>'
"and as we know the default key of <c-z> is quit file ,so do not use this key
"and redefine as other keys 
let g:user_emmet_settings = {
			\ 'php' : {
			\ 'extends' : 'html',
			\ 'filters' : 'c',
			\ },
			\ 'xml' : {
			\ 'extends' : 'html',
			\ },
			\ 'haml' : {
			\ 'extends' : 'html',
			\ },
			\}

"insert current time to file
:nnoremap <F5> "=strftime("%c")<CR>
:inoremap <F5> <C-R>=strftime("%c")<CR>

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
