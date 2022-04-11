local keymap = vim.api.nvim_set_keymap;
local opts = { noremap = true, silent = true }

-- Map <SPACE> as leader key
vim.g.mapleader = " "

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Keep visual mode indenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Don't yank on delete char
keymap("n", "x", '"_x', opts)
keymap("n", "X", '"_X', opts)
keymap("v", "x", '"_x', opts)
keymap("v", "X", '"_X', opts)

-- jk or kj for insert mode to normal mode
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

--Short fixes
--Save file by ctrl-s
keymap("i", "<C-s>", ":w<CR>", opts)
keymap("n", "<C-s>", "<ESC>:w<CR>", opts)

--Save & quite
keymap("n", "wq", ":wq<CR>", opts)
keymap("n", "qq", ":q!<CR>", opts)

--close selected buffer 
keymap("n", "<C-w>", ":bdelete<CR>", opts)

-- Nvim Tree
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>r", ":NvimTreeRefresh<CR>", opts)

-- Telescope
keymap("n", "<C-p>", "<CMD>lua require('plugins.telescope').project_files()<CR>", { noremap = true })
keymap("n", "<S-p>", "<CMD>Telescope live_grep<CR>", { noremap = true })

-- LazyGit
keymap("n", "<leader>gg", ":LazyGit<CR>", opts)

-- LSP keymaps
keymap( "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
keymap( "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
keymap( "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
keymap( "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
keymap( "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
keymap( "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
keymap( "n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
keymap(
  "n",
  "gl",
  '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = "rounded" })<CR>',
  opts
)
keymap( "n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
keymap( "n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)

