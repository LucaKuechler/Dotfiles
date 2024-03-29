local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
	execute("packadd packer.nvim")
end

return require("packer").startup(function(use)
	-- Packer can manage itself
	use({ "wbthomason/packer.nvim", opt = True })

	-- Icons
	use("kyazdani42/nvim-web-devicons")
	use("ryanoasis/vim-devicons")

	-- File Explorer
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("nvim-tree").setup({})
		end,
	})

	-- telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- toogle code commments
	use("terrortylor/nvim-comment")

	-- better syntax highlighting
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- lsp setup
	use({ "neovim/nvim-lspconfig" })
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })
	use({ "WhoIsSethDaniel/mason-tool-installer.nvim" })

	-- auto completion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("onsails/lspkind-nvim")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")

	use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" })

	-- color theme
	use("navarasu/onedark.nvim")

	-- async linter
	use("mfussenegger/nvim-lint")

	-- formatter
	use("mhartington/formatter.nvim")

	-- diagnostic popup
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	})

	-- git
	use({
		"lewis6991/gitsigns.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	-- indentation
	use("lukas-reineke/indent-blankline.nvim")

	-- auto pairs ( -> ()
	use("windwp/nvim-autopairs")

	-- debuger
	use("mfussenegger/nvim-dap")
	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
	use("mfussenegger/nvim-dap-python")
	use("leoluz/nvim-dap-go")

	-- lsp function signature
	use({ "hrsh7th/cmp-nvim-lsp-signature-help", requires = "hrsh7th/nvim-cmp" })

	-- jump to code symbols
	use({ "nvim-treesitter/nvim-treesitter-textobjects" })

	-- better comments
	use({
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
	})

	-- project management
	use({ "ahmedkhalf/project.nvim" })

	-- lua line
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- startup time
	use({ "dstein64/vim-startuptime" })

	-- go tests
	use({ "buoto/gotests-vim" })
end)
