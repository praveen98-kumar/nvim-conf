local options = {
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

}

vim.opt.shortmess:append('c')
vim.opt.formatoptions:remove('c')
vim.opt.formatoptions:remove('r')
vim.opt.formatoptions:remove('o')

for k, v in pairs(options) do
	vim.opt[k] = v
end
