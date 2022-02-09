local gl = require("galaxyline")
local util = require("lspconfig/util")
local path = util.path
local colors = require("galaxyline.themes.colors").default
local condition = require("galaxyline.condition")
local gls = gl.section
gl.short_line_list = { "NvimTree", "vista", "dbui", "packer" }

gls.left[2] = {
	ViMode = {
		provider = function()
			-- auto change color according the vim mode
			local mode_color = {
				n = colors.red,
				i = colors.green,
				v = colors.blue,
				[""] = colors.blue,
				V = colors.blue,
				c = colors.magenta,
				no = colors.red,
				s = colors.orange,
				S = colors.orange,
				[""] = colors.orange,
				ic = colors.yellow,
				R = colors.violet,
				Rv = colors.violet,
				cv = colors.red,
				ce = colors.red,
				r = colors.cyan,
				rm = colors.cyan,
				["r?"] = colors.cyan,
				["!"] = colors.red,
				t = colors.red,
			}
			vim.api.nvim_command("hi GalaxyViMode guifg=" .. mode_color[vim.fn.mode()])
			return "      "
		end,
		highlight = { colors.red, colors.bg, "bold" },
	},
}

gls.left[4] = {
	FileName = {
		provider = "FileName",
		condition = condition.buffer_not_empty,
		highlight = { colors.magenta, colors.bg, "bold" },
	},
}

gls.left[5] = {
	FileIcon = {
		provider = "FileIcon",
		condition = condition.buffer_not_empty,
		highlight = { require("galaxyline.providers.fileinfo").get_file_icon_color, colors.bg },
	},
}

gls.left[6] = {
	PythonEnv = {
		provider = function()
			if vim.env.VIRTUAL_ENV then
				local envName = vim.env.VIRTUAL_ENV:sub(vim.env.VIRTUAL_ENV:find("/[^/]*$") + 1)
				return "(" .. envName .. ") "
			end
			return ""
		end,
	},
}

gls.left[8] = {
	DiagnosticError = {
		provider = "DiagnosticError",
		icon = "  ",
		highlight = { colors.red, colors.bg },
	},
}
gls.left[9] = {
	DiagnosticWarn = {
		provider = "DiagnosticWarn",
		icon = "  ",
		highlight = { colors.yellow, colors.bg },
	},
}

gls.left[10] = {
	DiagnosticHint = {
		provider = "DiagnosticHint",
		icon = "  ",
		highlight = { colors.cyan, colors.bg },
	},
}

gls.left[11] = {
	DiagnosticInfo = {
		provider = "DiagnosticInfo",
		icon = "  ",
		highlight = { colors.blue, colors.bg },
	},
}

gls.right[3] = {
	GitIcon = {
		provider = function()
			return "  "
		end,
		condition = condition.check_git_workspace,
		separator = " ",
		separator_highlight = { "NONE", colors.bg },
		highlight = { colors.violet, colors.bg, "bold" },
	},
}

gls.right[4] = {
	GitBranch = {
		provider = "GitBranch",
		separator = " ",
		condition = condition.check_git_workspace,
		highlight = { colors.violet, colors.bg, "bold" },
	},
}

gls.right[5] = {
	DiffAdd = {
		provider = "DiffAdd",
		condition = condition.hide_in_width,
		icon = "  ",
		separator = " ",
		highlight = { colors.green, colors.bg },
	},
}
gls.right[6] = {
	DiffModified = {
		provider = "DiffModified",
		condition = condition.hide_in_width,
		icon = " 柳",
		highlight = { colors.orange, colors.bg },
	},
}
gls.right[7] = {
	DiffRemove = {
		provider = "DiffRemove",
		condition = condition.hide_in_width,
		icon = "  ",
		highlight = { colors.red, colors.bg },
	},
}

gls.short_line_left[1] = {
	BufferType = {
		provider = "FileTypeName",
		separator = " ",
		separator_highlight = { "NONE", colors.bg },
		highlight = { colors.blue, colors.bg, "bold" },
	},
}

gls.short_line_left[2] = {
	SFileName = {
		provider = "SFileName",
		condition = condition.buffer_not_empty,
		highlight = { colors.fg, colors.bg, "bold" },
	},
}

gls.short_line_right[1] = {
	BufferIcon = {
		provider = "BufferIcon",
		highlight = { colors.fg, colors.bg },
	},
}
