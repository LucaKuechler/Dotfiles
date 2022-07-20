local actions = require("telescope.actions")

require("telescope").setup({
	defaults = {
		mappings = {
			n = {
				["<C-s>"] = actions.select_vertical,
			},
			i = {
				["<C-s>"] = actions.select_vertical,
			},
		},
	},
})
