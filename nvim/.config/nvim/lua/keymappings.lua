-- LEADER KEY
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true})
vim.g.mapleader = ' '

-- remove search highlighting
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })

-- nvim lua file tree
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Bufferline
vim.api.nvim_set_keymap('n', '<TAB>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gt', ':BufferLinePick<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gtd', ':BufferLinePickClose<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w>', ':bd<CR>', { noremap = true, silent = true })

-- toggle telescope
vim.api.nvim_set_keymap('n', '<Leader>f', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>t', ':Telescope buffers<CR>', { noremap = true, silent = true })

-- better window movement
vim.api.nvim_set_keymap('n', 'gh', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gj', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gk', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gl', '<C-w>l', { noremap = true, silent = true })

-- better window resizing
vim.api.nvim_set_keymap('n', '<C-k>', ':resize +5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':resize -5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', ':vertical:resize +5<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':vertical:resize -5<CR>', { noremap = true, silent = true })

-- better indention
vim.api.nvim_set_keymap('v', '<C-i>', '>gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-u>', '<gv', { noremap = true, silent = true })

