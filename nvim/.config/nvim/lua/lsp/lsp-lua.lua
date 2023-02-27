local keymappings = require("lsp.lsp-keymappings")

require("lspconfig").lua_ls.setup({
	on_attach = function(client, bufnr)
		keymappings.keys(client, bufnr)
	end,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim", "True" },
			},
		},
	},
})
