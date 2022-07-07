require("todo-comments").setup({
	signs = false,
	-- keywords recognized as todo comments
	keywords = {
		FIX = { icon = " ", color = "#FF6D57", alt = { "BUG" } },
		TODO = { icon = " ", color = "#16FFB1" },
		WARN = { icon = " ", color = "#FFD976" },
	},

	merge_keywords = false,

	highlight = {
		before = "fg", -- "fg" or "bg" or empty
		keyword = "fg", -- "fg", "bg", "wide" or empty. (wide is the same as bg, but will also highlight surrounding characters)
		after = "", -- "fg" or "bg" or empty
		pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlightng (vim regex)
		comments_only = true, -- uses treesitter to match keywords in comments only
	},

	colors = {
		error = { "DiagnosticError", "ErrorMsg", "#FF6D57" },
		warning = { "DiagnosticWarning", "WarningMsg", "#FFD976" },
		info = { "DiagnosticInfo", "#10B981" },
	},
})
