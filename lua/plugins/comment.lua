local status_ok, nvim_comment = pcall(require, 'nvim_comment')

if not status_ok then
  return
end

nvim_comment.setup({
  line_mapping = "<leader>cl",
  operator_mapping = "<leader>c",
  comment_empty = false,
  hook = function()
    if vim.api.nvim_buf_get_option(0, "filetype") == "typescriptreact" then
      require("ts_context_commentstring.internal").update_commentstring()
    end
  end
})
