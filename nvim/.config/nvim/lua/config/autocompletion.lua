require("cmp").setup({
	sources = {
		{ name = "nvim_lsp", keyword_length = 5},
		{ name = "cmp_tabnine", keyword_length = 5},
		{ name = "path" },
		{ name = "buffer", keyword_length = 5 },
	},
	mappings = {},
})
