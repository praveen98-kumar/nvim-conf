local plugins = {
  -- Plugin Manager
	['wbthomason/packer.nvim' ] = {},

  -- Optimiser
  ['lewis6991/impatient.nvim'] = {
    config = function()
      require('plugins.impatient')
    end
  },

  ['nathom/filetype.nvim'] = {},

  ['nvim-lua/plenary.nvim'] = {},

  ['nvim-lua/popup.nvim'] = {},

  -- Icons
  ['kyazdani42/nvim-web-devicons'] = {},

  -- Colorscheme
  ["navarasu/onedark.nvim"] = {},

  -- Nvim Tree
  ['kyazdani42/nvim-tree.lua'] = {
    config = function()
      require("plugins.nvim-tree")
    end,
    cmd = "NvimTreeToggle"
  },

  ['nvim-lualine/lualine.nvim'] = {
    event = "BufWinEnter",
    config = function()
      require('plugins.lualine')
    end
  },

  ['akinsho/bufferline.nvim'] = {
    event = "BufWinEnter",
    config = function()
      require('plugins.bufferline')
    end
  },

  ['norcalli/nvim-colorizer.lua'] = {
    config = function()
      require('plugins.colorize')
    end,
    event = "BufRead"
  },

  ['akinsho/nvim-toggleterm.lua'] = {
    event = "BufEnter",
    config = function()
      require('plugins.toggleterm')
    end
  },


  ['nvim-treesitter/nvim-treesitter'] = {
    event = "BufWinEnter",
    config = function()
      require('plugins.treesitter')
    end,
    run = ':TSUpdate'
  },

  ['nvim-treesitter/nvim-treesitter-textobjects'] = {
    after = {'nvim-treesitter'}
  },

  ['RRethy/nvim-treesitter-textsubjects'] = {
    after = {'nvim-treesitter'}
  },

  ['nvim-telescope/telescope.nvim'] = {
    config = function()
      require('plugins.telescope')
    end
  },


  ['hrsh7th/nvim-cmp'] = {
    config = function()
      require('plugins.cmp')
    end
  },

  ['hrsh7th/cmp-nvim-lsp'] = {},
  ['hrsh7th/cmp-buffer'] = {},
  ['saadparwaiz1/cmp_luasnip'] = {},

    ['L3MON4D3/LuaSnip'] = {},
  ['rafamadriz/friendly-snippets'] = {},

  -- LSP
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require('lsp')
    end
  }, -- Enable LSP,

  ["williamboman/nvim-lsp-installer"] = {},

  -- Languages & Snippets & Syntax & Formatting
  ['p00f/nvim-ts-rainbow'] = {
    after = {"nvim-treesitter"}
  },

  ['windwp/nvim-autopairs'] = {
    config = function()
     require('plugins.autopairs')
    end,
    after = "nvim-cmp"
  },

  ['windwp/nvim-ts-autotag'] = {
    after = {"nvim-treesitter"}
  },

  ['jose-elias-alvarez/null-ls.nvim'] = {
    config = function()
      require('plugins.null-ls')
    end
  },

  --Comment
  ['terrortylor/nvim-comment'] = {
    config = function()
      require('plugins.comment')
    end
  },

  ['JoosepAlviste/nvim-ts-context-commentstring'] = {
    after = {"nvim-treesitter"}
  },

  -- Git
  ['lewis6991/gitsigns.nvim'] = {
    config = function()
      require('plugins.gitsigns')
    end,
    event = "BufRead"
  },

  ['sindrets/diffview.nvim'] = {},

  ['kdheepak/lazygit.nvim'] = {},

}

require("core.packer").run(plugins)
