require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"python",
		"bash",
		"gomod",
		"go",
	},

	highlight = {
		enable = true,
	},
})
