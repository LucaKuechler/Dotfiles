local keymappings = require("lsp.lsp-keymappings")

require("lspconfig").sumneko_lua.setup({
	on_attach = function(client, bufnr)
		keymappings.keys(client, bufnr)
	end,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})
