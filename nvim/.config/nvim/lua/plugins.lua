local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
	execute("packadd packer.nvim")
end

return require("packer").startup(function()
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

	-- use({
	-- 	"NTBBloodbath/galaxyline.nvim",
	--
	-- 	-- your statusline
	-- 	config = function()
	-- 		require("galaxyline.themes.eviline")
	-- 	end,
	--
	-- 	-- some optional icons
	-- 	requires = { "kyazdani42/nvim-web-devicons", opt = true },
	-- })

	-- buffer line
	use({ "akinsho/nvim-bufferline.lua", requires = "kyazdani42/nvim-web-devicons" })

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
	use({
		"neovim/nvim-lspconfig",
		"williamboman/nvim-lsp-installer",
	})

	-- auto completion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("onsails/lspkind-nvim")
	use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" })

	-- color theme
	use("christianchiarulli/nvcode-color-schemes.vim")

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
	use("mfussenegger/nvim-dap-python")
	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
	use("leoluz/nvim-dap-go")

	-- lsp function signature
	use({ "hrsh7th/cmp-nvim-lsp-signature-help", requires = "hrsh7th/nvim-cmp" })

	-- jump to code symbols
	use({ "nvim-treesitter/nvim-treesitter-textobjects" })

	-- better commands
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
end)
