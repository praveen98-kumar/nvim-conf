local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

nvim_tree.setup {
  auto_open = 1, 
  auto_close = 1, 
  gitignore = 1,
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
