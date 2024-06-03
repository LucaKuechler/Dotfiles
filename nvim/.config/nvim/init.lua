require("plugins")
require("keymappings")
require("settings")
require("colorscheme")

-- Plugins Config
require("config.telescope")
require("config.statusline")
require("config.autocompletion")
require("config.tabnine")
require("config.nvimtree")
require("config.commentary")
require("config.treesitter")
require("config.indent")
require("config.autopair")
require("config.comments")
require("config.project")

-- LSP Config
require("lsp.lsp-config")
require("lsp.lsp-python")
require("lsp.lsp-cpp")
require("lsp.lsp-go")
require("lsp.lsp-docker")
require("lsp.lsp-lua")
require("lsp.lsp-js")
require("lsp.lsp-php")
require("lsp.lsp-terraform")
require("lsp.lsp-markdown")

-- Linter
require("linter.linter")

-- Format
require("formatter.formatter")

-- Git
require("git.gitsigns")

-- Debugger
require("debugger.debugger")
require("debugger.ui")
require("debugger.python")
require("debugger.go")
