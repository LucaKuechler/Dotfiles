require("which-key").setup(
  {

  }
)

local wk = require("which-key")
wk.register(mappings, 
  {
    mode = "n", -- NORMAL mode
    prefix = "<leader>w", 
    -- buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false, -- use `nowait` when creating keymaps
  }
)
