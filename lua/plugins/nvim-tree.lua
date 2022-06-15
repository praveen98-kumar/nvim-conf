local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

nvim_tree.setup {
  auto_reload_on_write = true,
  open_on_setup = false,
  open_on_setup_file = false,
  open_on_tab = false, 
  filters = {
    dotfiles = false,
    custom = {"node_modules", ".git", ".next"}
  },
  view = {
    width = 30,
    hide_root_folder = true,
    auto_resize = false
  }
}
