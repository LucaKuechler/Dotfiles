local mode = {
	"mode",
	color = { fg = "#ffffff", bg = "#007ACC" },
}

local branch = {
	"branch",
	icons_enabled = true,
	icon = "",
	color = { fg = "#ffffff", bg = "#007ACC" },
}

local colors = {
	bg = "#202328",
	fg = "#bbc2cf",
	yellow = "#ECBE7B",
	cyan = "#008080",
	darkblue = "#081633",
	green = "#98be65",
	orange = "#FF8800",
	violet = "#a9a1e1",
	magenta = "#c678dd",
	blue = "#51afef",
	red = "#ec5f67",
}

local lsp_server_name = {
	function()
		local msg = "No Active Lsp"
		local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
		local clients = vim.lsp.get_active_clients()
		if next(clients) == nil then
			return msg
		end
		for _, client in ipairs(clients) do
			local filetypes = client.config.filetypes
			if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
				return client.name
			end
		end
		return msg
	end,
	--icon = " LSP:",
	color = { fg = "#ffffff", bg = "#007ACC" },
	padding = { right = 0, left = 0 },
}

local filetype = {
	"filetype",
	icon_only = true,
	colored = false,
	padding = { right = 1, left = 0 },
	color = { fg = "#ffffff", bg = "#007ACC" },
}

local leftBracket = {
	function()
		return "["
	end,
	color = { fg = "#ffffff", bg = "#007ACC" },
	padding = { right = 0, left = 1 },
}

local rightBracket = {
	function()
		return "]"
	end,
	color = { fg = "#ffffff", bg = "#007ACC" },
	padding = { right = 1, left = 0 },
}

local diagnostics = {
	"diagnostics",
	sources = { "nvim_diagnostic" },
	sections = { "error", "warn", "hint" },
	symbols = { error = " ", warn = " ", hint = " " },
	colored = false,
	color = { fg = "#ffffff", bg = "#007ACC" },
	update_in_insert = false,
	always_visible = true,
}

custom_theme = function()
	local colors = {
		darkgray = "#16161d",
		gray = "#727169",
		innerbg = "#007ACC",
		outerbg = "#16161D",
		normal = "#7e9cd8",
		insert = "#98bb6c",
		visual = "#ffa066",
		replace = "#e46876",
		command = "#e6c384",
	}
	return {
		inactive = {
			a = { fg = colors.gray, bg = colors.outerbg, gui = "bold" },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
		visual = {
			a = { fg = colors.darkgray, bg = colors.visual, gui = "bold" },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
		replace = {
			a = { fg = colors.darkgray, bg = colors.replace, gui = "bold" },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
		normal = {
			a = { fg = colors.darkgray, bg = colors.normal, gui = "bold" },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
		insert = {
			a = { fg = colors.darkgray, bg = colors.insert, gui = "bold" },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
		command = {
			a = { fg = colors.darkgray, bg = colors.command, gui = "bold" },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
	}
end

local diff = {
	"diff",
	symbols = { added = " ", modified = "柳 ", removed = " " },
	colored = false,
	source = function()
		local gitsigns = vim.b.gitsigns_status_dict

		if gitsigns then
			return {
				added = gitsigns.added,
				modified = gitsigns.changed,
				removed = gitsigns.removed,
			}
		end
	end,
	color = { fg = "#ffffff", bg = "#007ACC" },
}

local filename = {
	"filename",
	color = { fg = "#ffffff", bg = "#007ACC" },
	padding = { right = 0, left = 0 },
}

local spacer = {
	function()
		return "                         "
	end,
}

require("lualine").setup({
	options = {
		icons_enabled = true,
		component_separators = { left = " ", right = " " },
		section_separators = { left = " ", right = "" },
		disabled_filetypes = {},
		always_divide_middle = true,
		theme = custom_theme(),
	},
	sections = {
		lualine_a = { mode },
		lualine_b = { leftBracket, filetype, lsp_server_name, rightBracket, diagnostics },
		lualine_c = { "%=", filename },
		lualine_x = { spacer },
		lualine_y = { diff },
		lualine_z = { branch },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
})
