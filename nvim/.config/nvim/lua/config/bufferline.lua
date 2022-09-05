require("bufferline").setup({
	options = {
		show_close_icon = true,
		always_show_bufferline = false,
		separator_style = "thin",
		offsets = { { filetype = "NvimTree", text = "File Explorer" } },
		custom_areas = {
			right = function()
				local result = {}
				local error = vim.diagnostic.get(0, [[Error]])
				local warning = vim.diagnostic.get(0, [[Warning]])
				local info = vim.diagnostic.get(0, [[Information]])
				local hint = vim.diagnostic.get(0, [[Hint]])

				if error ~= 0 then
					table.insert(result, { text = "  " .. error, guifg = "#EC5241" })
				end

				if warning ~= 0 then
					table.insert(result, { text = "  " .. warning, guifg = "#EFB839" })
				end

				if hint ~= 0 then
					table.insert(result, { text = "  " .. hint, guifg = "#A3BA5E" })
				end

				if info ~= 0 then
					table.insert(result, { text = "  " .. info, guifg = "#7EA9A7" })
				end
				return result
			end,
		},
	},
})
