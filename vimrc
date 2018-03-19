set number
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set showcmd
set cursorline
set virtualedit=onemore
set showmatch
set laststatus=2
set wildmode=list:longest
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
set laststatus=2
set statusline=%F
set statusline+=%=
set statusline+=[LOW=%l/%L]
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap <silent><C-e> :NERDTreeToggle<CR>

imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

hi DiffAdd    ctermfg=black ctermbg=2
hi DiffChange ctermfg=black ctermbg=3
hi DiffDelete ctermfg=black ctermbg=6
hi DiffText   ctermfg=black ctermbg=7

if has('vim_starting')

	set runtimepath+=~/.vim/bundle/neobundle.vim/
	 if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
		echo "install NeoBundle..."
		:call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
	endif
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

	NeoBundle 'tomtom/tcomment_vim'
	NeoBundle 'scrooloose/nerdtree'
	NeoBundle 'scrooloose/syntastic'
	NeoBundle 'Shougo/unite.vim'
	NeoBundle 'tomasr/molokai'
	NeoBundle 'croaker/mustang-vim'
	NeoBundle 'scrooloose/nerdtree'
	
	set t_Co=256
	syntax enable
call neobundle#end()

filetype plugin indent on

NeoBundleCheck

colorscheme atom-dark-256
set t_Co=256
syntax enable

let g:syntastic_enable_signs = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers=['eslint']
