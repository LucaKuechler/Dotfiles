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
vim.api.nvim_set_keymap("n", "<Leader><Leader>", ":Telescope find_files prompt_prefix=🔍<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>g", ":Telescope live_grep prompt_prefix=🔍<CR>", { noremap = true, silent = true })

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
vim.api.nvim_set_keymap("v", "<C-o>", "<gv", { noremap = true, silent = true })

-- formatter
vim.api.nvim_set_keymap("n", "<leader>f", ":Format<CR>", { noremap = true, silent = true })

-- linter (additional programs)
vim.api.nvim_set_keymap("n", "<leader>a", ':lua require("lint").try_lint()<CR>', { noremap = true, silent = true })

-- trouble
vim.api.nvim_set_keymap("n", "<leader>x", "<cmd>Trouble document_diagnostics<cr>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>xt", "<cmd>TodoTrouble<cr>", { silent = true, noremap = true })
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

-- file and text movements
vim.api.nvim_set_keymap("n", "<C-p>", "<C-o>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<C-n>", "<C-i>", { silent = true, noremap = true })

-- page navigation
vim.api.nvim_set_keymap("n", "<C-r>", "<C-y>", { silent = true, noremap = true })

-- redo
vim.api.nvim_set_keymap("n", "<C-y>", "<C-r>", { silent = true, noremap = true })

-- treesitter code movement
vim.api.nvim_set_keymap("n", "<leader>of", ":TSTextobjectSelect @function.outer<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>if", ":TSTextobjectSelect @function.inner<CR>", { silent = true, noremap = true })

vim.api.nvim_set_keymap("n", "<leader>oc", ":TSTextobjectSelect @class.outer<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ic", ":TSTextobjectSelect @class.inner<CR>", { silent = true, noremap = true })

vim.api.nvim_set_keymap("n", "<leader>nf", ":TSTextobjectGotoNextStart @function.outer<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>pf", ":TSTextobjectGotoPreviousStart @function.outer<CR>", { silent = true, noremap = true })

vim.api.nvim_set_keymap("n", "<leader>nc", ":TSTextobjectGotoNextStart @class.outer<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>pc", ":TSTextobjectGotoPreviousStart @class.outer<CR>", { silent = true, noremap = true })

vim.api.nvim_set_keymap("n", "<leader>nb", ":TSTextobjectGotoNextStart @block.outer<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>pb", ":TSTextobjectGotoPreviousStart @block.outer<CR>", { silent = true, noremap = true })

vim.api.nvim_set_keymap("n", "<leader>np", ":TSTextobjectSwapNext @parameter.inner<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>pp", ":TSTextobjectSwapPrevious @parameter.inner<CR>", { silent = true, noremap = true })

-- move lines of code
vim.api.nvim_set_keymap("n", "<C-q>", ":m -2<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<C-a>", ":m +1<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("v", "<C-q>", "dkP`[V`]", { silent = true, noremap = true })
vim.api.nvim_set_keymap("v", "<C-a>", "dp`[V`]", { silent = true, noremap = true })

-- projects
vim.api.nvim_set_keymap("n", "<leader>r", ":Telescope projects<CR>", { silent = true, noremap = true })
