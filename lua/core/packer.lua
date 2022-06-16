local M = {}
local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
local compile_path = install_path .. "/plugin/packer_compiled.lua"

-- Clone Packer
M.bootstrap = function()
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e222a" })

  if fn.empty(fn.glob(install_path)) > 0 then
    print "Cloning packer..."
    packer_bootstrap = fn.system {
      "git",
      "clone",
      "--depth",
      "1",
      "https://github.com/wbthomason/packer.nvim",
      install_path
    }
    vim.cmd [[packadd packer.nvim]]
    require("plugins")
    vim.cmd [[PackerSync]]
  end
end

M.options = {
  compile_path = compile_path,
  auto_clean = true,
  compile_on_sync = true,
	display = {
    working_sym = "⌛",
    error_sym = "❌",
    done_sym = "✅",
    removed_sym = "🗑️",
    moved_sym = "👋",
		open_fn = function()
			return require('packer.util').float {border = "rounded"}
		end,
	}
}

M.run = function(plugins)
  local status_ok, packer = pcall(require, "packer")
  if not status_ok then
    return
  end

  packer.init(M.options)

  packer.startup(function(use)
    for key, v in pairs(plugins) do
      plugins[key][1] = key
      use(v)
    end
  end)
end

return M
