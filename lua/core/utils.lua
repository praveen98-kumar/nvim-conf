local M = {}

M.echo = function (message)
  message = message or {{"\n"}}
  if type(message) == 'table' then
    vim.api.nvim_echo(message, false, {})
  end
end

M.compile_plugins = function ()
  local compile_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim" .. "/plugin/packer_compiled.lua"

  local run_me, _ = loadfile(compile_path)

  if run_me then
    run_me()
  else
    M.echo {{"Please run "}, {":PackerSync", "Title"}}
  end
end

M.load_options = function (options)
  for scope, table in pairs(options) do
    for setting, value in pairs(table) do
      vim[scope][setting] = value
    end
  end
end

M.load_keymappings = function (mappings, mapping_opts)
  for mode, mode_mappings in pairs(mappings) do
    for _, mapping in pairs(mode_mappings) do
			local options = #mapping == 3 and table.remove(mapping) or mapping_opts
			local prefix, cmd = unpack(mapping)
			pcall(vim.api.nvim_set_keymap, mode, prefix, cmd, options)
    end
  end
end

M.merge_tb = function (table1, table2)
  return vim.tbl_deep_extend("force", table1, table2)
end

return M
