require("plugins")
require("keymappings")
require("settings")
require("colorscheme")

-- Plugins Config
require("config.telescope")
require("config.bufferline")
require("config.galaxyline")
require("config.autocompletion")
require("config.tabnine")
require("config.nvimtree")
require("config.commentary")
require("config.treesitter")
require("config.indent")
require("config.autopair")
require("config.comments")

-- LSP Config
require("lsp.lsp-config")
require("lsp.lsp-python")
require("lsp.lsp-go")
require("lsp.lsp-docker")
require("lsp.lsp-lua")

-- Linter
require("linter.test")

-- Format
require("formatter.test")

-- Git
require("git.gitsigns")

-- Debugger
require("debugger.debugger")
require("debugger.ui")
require("debugger.python")
require("debugger.go")
