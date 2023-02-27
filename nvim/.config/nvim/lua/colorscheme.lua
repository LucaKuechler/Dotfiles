require("onedark").setup({
	style = "dark",
	transparent = true,

	highlights = {
		DiagnosticVirtualTextError = { bg = "NONE" },
		DiagnosticVirtualTextWarn = { bg = "NONE" },
		DiagnosticVirtualTextInfo = { bg = "NONE" },
		DiagnosticVirtualTextHint = { bg = "NONE" },
	},
})
require("onedark").load()

-- normalize editor
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("highlight LineNr guibg=NONE")
vim.cmd("highlight CursorLine term=bold cterm=bold guibg=none")
vim.cmd("highlight CursorLineNr gui=bold guifg=Yellow guibg=NONE")
vim.cmd("highlight clear SignColumn")
vim.cmd("highlight Cursor ctermfg=black ctermbg=black")
vim.cmd("highlight GitSignsAdd ctermfg=green guifg=#98C379")
vim.cmd("highlight GitSignsChange ctermfg=yellow guifg=#E5C07A")
vim.cmd("highlight GitSignsDelete ctermfg=red guifg=#E06B74")

-- border cmp
vim.cmd("highlight! BorderBG guibg=NONE guifg=#56b6c2")

-- colors for autocompletion kinds
vim.cmd("highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080")
vim.cmd("highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6")
vim.cmd("highlight! link CmpItemAbbrMatchFuzzy CmpItemAbbrMatch")
vim.cmd("highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE")
vim.cmd("highlight! link CmpItemKindInterface CmpItemKindVariable")
vim.cmd("highlight! link CmpItemKindText CmpItemKindVariable")
vim.cmd("highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0")
vim.cmd("highlight! link CmpItemKindMethod CmpItemKindFunction")
vim.cmd("highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4")
vim.cmd("highlight! link CmpItemKindProperty CmpItemKindKeyword")
vim.cmd("highlight! link CmpItemKindUnit CmpItemKindKeyword")
