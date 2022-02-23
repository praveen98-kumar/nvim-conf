local fn = vim.fn

--Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path
	}
	print "Installing packer close and reopen Neovim..."
	vim.cmd [[packadd packer.nvim]]
end


-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
	display = {
		open_fn = function()
			return require('packer.util').float {border = "rounded"}
		end,
	}
}

return packer.startup(function()
	--Packer can manage itself
	use { 'wbthomason/packer.nvim' }

  -- Needed to load first
  use {'nathom/filetype.nvim'}
  use {'nvim-lua/plenary.nvim'}
  use {'nvim-lua/popup.nvim'}
  use {'kyazdani42/nvim-web-devicons'}

  -- Colorscheme
  use {'navarasu/onedark.nvim'}
  
  -- Nvim Tree
  use {'kyazdani42/nvim-tree.lua', config = "require('plugins.nvim-tree')", cmd = "NvimTreeToggle"}

  -- General
  use {'nvim-lualine/lualine.nvim', event = "BufWinEnter", config = "require('plugins.lualine')"}
  use {'akinsho/bufferline.nvim', event = "BufWinEnter", config = "require('plugins.bufferline')"}
  use {'norcalli/nvim-colorizer.lua', config = "require('plugins.colorize')", event = "BufRead"}
  use {'akinsho/nvim-toggleterm.lua', event = "BufEnter", config = "require('plugins.toggleterm')"}

  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', event = "BufWinEnter", config = "require('plugins.treesitter')", run = ':TSUpdate'}
  use {'nvim-treesitter/nvim-treesitter-textobjects', after = {'nvim-treesitter'}}
  use {'RRethy/nvim-treesitter-textsubjects', after = {'nvim-treesitter'}}

  --Fuzzy Finder
  use {'nvim-telescope/telescope.nvim', config = "require('plugins.telescope')"}

  -- CMP
  use {'hrsh7th/nvim-cmp', config = "require('plugins.cmp')"}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'saadparwaiz1/cmp_luasnip'}

  --Snippets
  use {'L3MON4D3/LuaSnip'}
  use {'rafamadriz/friendly-snippets'}

  -- LSP
  use {"neovim/nvim-lspconfig", config = "require('lsp')"} -- Enable LSP
  use {"williamboman/nvim-lsp-installer"}  

  -- Languages & Snippets & Syntax & Formatting
  use {'p00f/nvim-ts-rainbow', after = {"nvim-treesitter"}}
  use {'windwp/nvim-autopairs', config = "require('plugins.autopairs')", after = "nvim-cmp"}
  use {'windwp/nvim-ts-autotag', after = {"nvim-treesitter"}}

  --Comment
  use {'terrortylor/nvim-comment', config = "require('plugins.comment')"}
  use {'JoosepAlviste/nvim-ts-context-commentstring', after = {"nvim-treesitter"}}

  -- Git
  use {'lewis6991/gitsigns.nvim',
    config = "require('plugins.gitsigns')",
    event = "BufRead"
  }
  use {'sindrets/diffview.nvim'}
  use {'kdheepak/lazygit.nvim'}

	if PACKER_BOOTSTRAP then
		require('packer').sync()
	end
end)

