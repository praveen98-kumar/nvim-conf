local utils = require("core.utils")

local options = {
	opt = {
		clipboard      = "unnamed,unnamedplus",
		completeopt    = "menu,menuone,noselect,noinsert",
		cursorline     = true,
		emoji          = false,
		expandtab      = true,
		foldlevelstart = 99,
		ignorecase     = true,
		lazyredraw     = true,
		mouse          = "a",
		number         = true,
		relativenumber = true,
		scrolloff      = 8,
		shiftwidth     = 2,
		showtabline    = 2,
		signcolumn     = "yes",
		smartcase      = true,
		smartindent    = true,
		smarttab       = true,
		softtabstop    = 2,
		splitright     = true,
		swapfile       = false,
		tabstop        = 2,
		termguicolors  = true,
		timeoutlen     = 300,
		undofile       = true,
		updatetime     = 100,
		viminfo        = "'1000",
		wildignore     = "*node_modules/**",
		wrap           = false,
		writebackup    = false,
		title           = true,
		autoindent     = true,
		backspace      = "indent,eol,start",
		backup         = false,
		conceallevel   = 0,
		encoding       = "utf-8",
		errorbells     = false,
		fileencoding   = "utf-8",
		incsearch      = true,
		showmode       = false,
		background      = 'dark',
	},
	g = {
		do_filetype_lua = 1, -- use filetype.lua
		did_load_filetypes = 0, -- don't use filetype.vim
		highlighturl_enabled = true, -- highlight URLs by default
		mapleader = " ", -- set leader key
		zipPlugin = false, -- disable zip
		load_black = false, -- disable black
		loaded_2html_plugin = true, -- disable 2html
		loaded_getscript = true, -- disable getscript
		loaded_getscriptPlugin = true, -- disable getscript
		loaded_gzip = true, -- disable gzip
		loaded_logipat = true, -- disable logipat
		loaded_matchit = true, -- disable matchit
		loaded_netrwFileHandlers = true, -- disable netrw
		loaded_netrwPlugin = true, -- disable netrw
		loaded_netrwSettngs = true, -- disable netrw
		loaded_remote_plugins = true, -- disable remote plugins
		loaded_tar = true, -- disable tar
		loaded_tarPlugin = true, -- disable tar
		loaded_zip = true, -- disable zip
		loaded_zipPlugin = true, -- disable zip
		loaded_vimball = true, -- disable vimball
		loaded_vimballPlugin = true, -- disable vimball
	  },
}

utils.load_options(options)

