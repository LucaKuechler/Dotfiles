-- LEADER KEY
vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true, silent = true })
vim.g.mapleader = " "

-- remove search highlighting
vim.api.nvim_set_keymap("n", "<Leader>v", ":set hlsearch!<CR>", { noremap = true, silent = true })

-- nvim lua file tree
vim.api.nvim_set_keymap("n", "<Leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Bufferline
vim.api.nvim_set_keymap("n", "<TAB>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gt", ":BufferLinePick<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gtd", ":BufferLinePickClose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-w>", ":bd<CR>", { noremap = true, silent = true })

-- toggle telescope
vim.api.nvim_set_keymap("n", "<Leader><Leader>", ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>t", ":Telescope buffers<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>g", ":Telescope live_grep<CR>", { noremap = true, silent = true })

-- better window movement
vim.api.nvim_set_keymap("n", "gh", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gj", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gk", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gl", "<C-w>l", { noremap = true, silent = true })

-- better window resizing
vim.api.nvim_set_keymap("n", "<C-k>", ":resize +5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", ":resize -5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-h>", ":vertical:resize +5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", ":vertical:resize -5<CR>", { noremap = true, silent = true })

-- better indention
vim.api.nvim_set_keymap("v", "<C-i>", ">gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-a>", ">gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-u>", "<gv", { noremap = true, silent = true })

-- formatter
vim.api.nvim_set_keymap("n", "<leader>f", ":Format<CR>", { noremap = true, silent = true })

-- linter (additional programs)
vim.api.nvim_set_keymap("n", "<leader>p", ':lua require("lint").try_lint()<CR>', { noremap = true, silent = true })

-- trouble
vim.api.nvim_set_keymap("n", "<leader>x", "<cmd>Trouble document_diagnostics<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>", { silent = true, noremap = true })

-- git
vim.api.nvim_set_keymap("n", "<leader>h", ":Gitsigns toggle_signs<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>hd", ":Gitsigns diffthis<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>hp", ":Gitsigns preview_hunk<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>hj", ":Gitsigns next_hunk<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>hk", ":Gitsigns prev_hunk<CR>", { silent = true, noremap = true })

-- debugger
vim.api.nvim_set_keymap("n", "<leader>d", ":lua require'dap'.continue()<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>db", ":lua require('dap').toggle_breakpoint()<CR>", { silent = true, noremap = true })
