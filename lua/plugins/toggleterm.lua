local present, toggleterm = pcall(require, "toggleterm")
if not present then
    return
end

toggleterm.setup {
  size = 13,
  open_mapping = [[<c-\>]],
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = '1',
  start_in_insert = true,
  persist_size = true,
  direction = 'horizontal',
  close_on_exit = true,
}
