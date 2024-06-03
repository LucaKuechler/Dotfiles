require("dap-go").setup({
	dap_configurations = {
		{
			type = "go",
			name = "Attach remote",
			mode = "remote",
			request = "attach",
		},
	},
	delve = {
		initialize_timeout_sec = 20,
		port = "40000",
	},
})

require("dap.ext.vscode").load_launchjs(nil, {})
-- local dap = require("dap")
--
-- function DapDebug()
-- 	dap.configurations.go = {
-- 		{
-- 			type = "delve",
-- 			name = "Debug (Remote binary)",
-- 			request = "launch",
-- 			cwd = "/app/",
-- 			remotePath = "",
-- 			mode = "exec",
-- 			hostName = "127.0.0.1",
-- 			port = "40000",
-- 			program = function()
-- 				local argument_string = vim.fn.input("Path to binary: ")
-- 				vim.notify("Debugging binary: " .. argument_string)
-- 				return vim.fn.split(argument_string, " ", true)[1]
-- 			end,
-- 		},
-- 	}
--
-- 	-- we want to run delve manually
-- 	dap.adapters.delve = {
-- 		type = "server",
-- 		host = "127.0.0.1",
-- 		port = 40000,
-- 	}
--
-- 	require("dap").continue()
-- end
