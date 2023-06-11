local keymappings = require("lsp.lsp-keymappings")

require("lspconfig").clangd.setup({
	on_attach = function(client, bufnr)
		keymappings.keys(client, bufnr)
	end,
})
