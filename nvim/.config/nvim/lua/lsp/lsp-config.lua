require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
		},
	},
})

require("mason-tool-installer").setup({
	ensure_installed = {
		-- Python
		"pyright",
		"pylint",
		"mypy",
		"black",
		"debugpy",

		-- Go
		"gopls",
		"delve",
		"gofumpt",
		"golangci-lint",

		-- Docker
		"dockerfile-language-server",

		-- Javascript
		"prettier",

		-- Markdown
		"markdownlint",

		-- Lua
		"lua-language-server",
		"stylua",
	},

	-- update whenever possible
	auto_update = false,

	-- update on startup
	run_on_start = true,

	-- 3 second delay
	start_delay = 3000,
})
