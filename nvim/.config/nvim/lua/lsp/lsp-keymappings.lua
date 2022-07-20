local function keys(client, bufnr)
	local opts = { noremap = true, silent = true }

	-- go to class or function definition
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gc", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)

	-- go to implementation of a class like repositoryImpl
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>li", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)

	-- go to initialization of a type
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)

	-- go to  var name; or func name();
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)

	-- show explanation of a type
	vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)

	-- show parameters of a function or class
	vim.api.nvim_buf_set_keymap(bufnr, "n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)

	-- rename symbol -> not properly working in single file mode
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)

	-- go to next diagnostic (hint, warning or error)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)

	-- go to prev diagnostic (hint, warning or error)
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)

	-- open code actions for buffer
	vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
end

return { keys = keys }
