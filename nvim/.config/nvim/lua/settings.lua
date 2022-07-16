local o = vim.o
local wo = vim.wo
local bo = vim.bo

wo.wrap = false -- file overall
wo.number = true -- file overall

bo.smartindent = true -- indention
bo.autoindent = true -- indention
bo.expandtab = true -- convert tabs to spaces
o.tabstop = 4 -- Insert 4 spaces for tab
o.shiftwidth = 4 -- While tab=2 will always complete 1-2 this will complete 1-3
o.showtabline = 2 -- Always show tabs
o.conceallevel = 0 -- `` in markdown

o.splitbelow = true -- split window default
o.splitright = true -- split window default

o.termguicolors = true -- colors

o.mouse = "a" -- mouse support

o.fileencoding = "utf-8" -- fileencoding

o.updatetime = 750 -- Faster completion

o.clipboard = "unnamedplus" -- clipboard

o.backup = false -- backup
o.writebackup = false -- backup

o.timeoutlen = 300 -- by default timeoutlen is 1000ms

o.cursorline = true -- activate cursorline

o.laststatus = 3 -- set one global statusline for all splits
