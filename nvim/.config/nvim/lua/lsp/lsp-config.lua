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

require'cmp'.setup {
  sources = {
    { name = 'nvim_lsp_signature_help' }
  }
}

require("nvim-lsp-installer").setup({
	ensure_installed = {"gopls", "dockerls", "pyright"},
})
