local dap = require("dap")
dap.adapters.go = {
	type = "executable",
	command = "node",
	args = { os.getenv("HOME") .. "/.local/share/nvim/debugger/go/vscode-go/dist/debugAdapter.js" },
}
dap.configurations.go = {
	{
		type = "go",
		name = "Debug",
		request = "launch",
		showLog = false,
		program = "${file}",
		dlvToolPath = os.getenv("HOME") .. "/.local/share/nvim/debugger/go/delve/dlv",  -- Adjust to where delve is installed
	},
}
