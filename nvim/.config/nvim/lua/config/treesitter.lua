require("nvim-treesitter.configs").setup({
	ensure_installed = { "python", "bash", "gomod", "go" },
	highlight = {
		enable = true,
	},

	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},
	indent = {
		enable = true,
	},

	textobjects = {
		select = {
			enable = true,
			-- Automatically jump forward to textobj, similar to targets.vim
			lookahead = true,
		},
	},

	move = {
		enable = true,
		set_jumps = true, -- whether to set jumps in the jumplist
	},
})
