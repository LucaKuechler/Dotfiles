require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
		},
	},
})

require("mason-lspconfig").setup({
	ensure_installed = { "gopls", "dockerls", "pyright", "lua_ls" },
})
