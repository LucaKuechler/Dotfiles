-- LEADER KEY
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true})
vim.g.mapleader = ' '

-- remove search highlighting
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })

-- toggle file explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Tab to swich between buffers
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', { noremap = true, silent = true })

-- toggle telescope
vim.api.nvim_set_keymap('n', '<Leader>f', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>t', ':Telescope buffers<CR>', { noremap = true, silent = true })

-- better window movement
vim.api.nvim_set_keymap('n', 'gh', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gj', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gk', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gl', '<C-w>l', { noremap = true, silent = true })

-- nerd commenter
vim.api.nvim_set_keymap('n', '<C-\\>', ':call nerdcommenter#Comment("x", "toggle")<CR>', { noremap = true, silent = true })
