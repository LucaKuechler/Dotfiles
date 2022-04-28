local nvim_lsp = require("lspconfig")

local servers = { "pyright", "gopls", "eslint", "intelephense", "clangd" }
for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup({
		on_attach = on_attach,
		flags = {
			debounce_text_changes = 150,
		},
	})
end
