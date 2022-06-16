local opts = { noremap = true, silent = true }
local utils = require("core.utils")


local mappings = {
  -- Insert mode key bindings
  i = {
    { "jk", "<ESC>" },
    { "kj", "<ESC>" },
		{ "<C-s>", "<ESC>:w<CR>i" },
  },

  -- Normal mode key bindings
  n = {
		{ "<C-h>", "<C-w>h" },
		{ "<C-j>", "<C-w>j" },
		{ "<C-k>", "<C-w>k" },
		{ "<C-l>", "<C-w>l" },
		{ "<C-s>", ":w<CR>" },

    { "<ESC>", ":noh<CR>" },

    { "<C-n>", ":NvimTreeToggle<CR>" },
    { "<leader>r", ":NvimTreeRefresh<CR>" },

    { "<C-p>", "<CMD>lua require('plugins.telescope').project_files()<CR>" },
    { "<S-p>", "<CMD>Telescope live_grep<CR>" },

    { "<leader>gg", ":LazyGit<CR>" },

    -- LSP Keymaps
    { "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>" },
    { "gd", "<cmd>lua vim.lsp.buf.definition()<CR>"},
    { "K", "<cmd>lua vim.lsp.buf.hover()<CR>"},
    { "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>" },
    { "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>" },
    { "gr", "<cmd>lua vim.lsp.buf.references()<CR>" },
    { "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>' },
    { "gl", '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = "rounded" })<CR>'},
    { "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>' },
    { "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>" },
  },
  -- Visual mode key bindings
  v = {
    { "<", "<gv" },
    { ">", ">gv" },
    { "<A-j>", ":move '>+1<CR>gv-gv" },
    { "<A-k>", ":move '<-2<CR>gv-gv" }
  }
}

utils.load_keymappings(mappings, opts)

