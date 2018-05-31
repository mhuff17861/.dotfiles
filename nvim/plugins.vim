" Setup dein and install plugins
if &compatible
	set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
	call dein#begin('~/.cache/dein')

	call dein#add('~/.cache/dein')
	call dein#add('Shougo/deoplete.nvim')
	if !has('nvim')
		call dein#add('roxma/nvim-yarp')
		call dein#add('roxma/vim-hug-neovim-rpc')
	endif

	call dein#add('itchyny/lightline.vim')
	call dein#add('tpope/vim-surround')
	call dein#add('tpope/vim-obsession')
	call dein#add('easymotion/vim-easymotion')
	call dein#add('ludovicchabant/vim-gutentags')
	call dein#add('vim-scripts/indentpython.vim')
	call dein#add('jmcantrell/vim-virtualenv')
	call dein#add('lervag/vimtex')
	call dein#add('jlanzarotta/bufexplorer')
	call dein#add('tpope/vim-fugitive')
  call dein#add('~/.fzf')
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
	call dein#add('junegunn/gv.vim')
	call dein#add('airblade/vim-gitgutter')
	call dein#add('vim-syntastic/syntastic')
	call dein#add('nvie/vim-flake8')
	call dein#add('scrooloose/nerdTree')
	call dein#add('jistr/vim-nerdtree-tabs')
	call dein#add('scrooloose/nerdcommenter')
	call dein#add('raimondi/delimitmate')
	call dein#add('maxbrunsfeld/vim-yankstack')
	call dein#add('terryma/vim-multiple-cursors')
	call dein#add('christoomey/vim-tmux-navigator')
	call dein#add('rust-lang/rust.vim')
	call dein#add('flazz/vim-colorschemes')
	call dein#add('peterhoeg/vim-qml')
	call dein#add('mhinz/vim-startify')
	call dein#add('Shougo/unite.vim')
	call dein#add('Shougo/vimfiler.vim')
	call dein#add('shinchu/lightline-gruvbox.vim')
	call dein#add('haya14busa/incsearch.vim')
	call dein#add('sheerun/vim-polyglot')
	call dein#add('w0rp/ale')

	let g:deoplete#enable_at_startup = 1
	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on
syntax enable
