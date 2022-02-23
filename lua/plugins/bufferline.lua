local status_ok, bufferline = pcall(require, "bufferline")

if not status_ok then
  return
end

bufferline.setup {
options = {
    diagnostics = "nvim_lsp",
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left"
      },
      {
        filetype = "vista_kind",
        text = "Lsp Tags",
        text_align = "center"
      }
    }
  }
}
vim.cmd [[
nnoremap <silent><TAB> :BufferLineCycleNext<CR>
nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
]]
