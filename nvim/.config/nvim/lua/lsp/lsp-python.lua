local keymappings = require("lsp.lsp-keymappings")

require("lspconfig").pyright.setup({
	on_attach = function(client, bufnr)
		keymappings.keys(client, bufnr)
	end,

	settings = {
		python = {
			analysis = {
				autoSearchPaths = true,
				diagnosticMode = "workspace",
				useLibraryCodeForTypes = true,
			},
		},
	},

	flags = {
		debounce_text_changes = 150,
	},
})
