local keymappings = require("lsp.lsp-keymappings")

require("lspconfig").tsserver.setup({
	on_attach = function(client, bufnr)
		keymappings.keys(client, bufnr)
	end,
})
