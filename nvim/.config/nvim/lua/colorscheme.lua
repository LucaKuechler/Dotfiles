require('onedark').setup {
    style = 'dark',
	transparent = true
}
require('onedark').load()

vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
vim.cmd('highlight LineNr guibg=NONE')
vim.cmd('highlight CursorLine term=bold cterm=bold guibg=none')
vim.cmd('highlight CursorLineNr gui=bold guifg=Yellow guibg=NONE')
vim.cmd('highlight clear SignColumn')
vim.cmd('highlight Cursor ctermfg=black ctermbg=black')
vim.cmd('highlight GitSignsAdd ctermfg=green guifg=#98C379')
vim.cmd('highlight GitSignsChange ctermfg=yellow guifg=#E5C07A')
vim.cmd('highlight GitSignsDelete ctermfg=red guifg=#E06B74')
