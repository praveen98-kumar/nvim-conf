local status_ok, config = pcall(require, "nvim-treesitter.configs")

if not status_ok then
  return
end

config.setup {
  ensure_installed = {"css", "html", "javascript", "tsx", "typescript", "json", "lua"},
  highlight = {enable = true, additional_vim_regex_highlighting = false},
  autotag = {
    enable = true,
    filetypes = {
      'html', 'javascript', 'xml', 'javascriptreact', 'typescriptreact', 'svelte', 'vue'
    }
  },
  rainbow = {
    enable = true,
    extended_mode = false,
    max_file_lines = nil 
  },
  autopairs = {enable = true},
  playground = {
    enable = true;
  },
   context_commentstring = {
    enable = true
  }, 
}
