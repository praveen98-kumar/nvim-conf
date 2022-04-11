local status_ok, null_ls = pcall(require, "null-ls")

if not status_ok then
    return
end

local formatting = null_ls.builtins.formatting

null_ls.setup({
    sources = {
        formatting.prettier
    },
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
		end
	end,
})
