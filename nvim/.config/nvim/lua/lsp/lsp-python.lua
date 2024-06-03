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
		pyright = {
			-- Using Ruff's import organizer
			disableOrganizeImports = true,
		},
	},

	flags = {
		debounce_text_changes = 150,
	},
})

require("lspconfig").ruff_lsp.setup({
	on_attach = function(client, bufnr)
		keymappings.keys(client, bufnr)
	end,

	init_options = {
		settings = {
			-- Any extra CLI arguments for `ruff` go here.
			args = {},
		},
	},
})
