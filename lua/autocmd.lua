vim.cmd[[
augroup transparent
    autocmd!
    autocmd VimEnter,ColorScheme * lua require('plugins.transparent').clear_bg()
    autocmd VimEnter,ColorScheme * lua require('plugins.transparent').toggle_transparent(true)
augroup END
]]
