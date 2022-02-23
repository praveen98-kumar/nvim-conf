local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

lualine.setup({
  options = {
    theme = 'auto',
    disabled_filetypes = {
      "toggleterm",
      "NvimTree",
      "vista_kind",
    },
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''}
  },
  extensions = {'nvim-tree'}
})
