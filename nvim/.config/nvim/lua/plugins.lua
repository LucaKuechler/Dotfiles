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

	use({
		"NTBBloodbath/galaxyline.nvim",

		-- your statusline
		config = function()
			require("galaxyline.themes.eviline")
		end,

		-- some optional icons
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- buffer line
	use({ "akinsho/nvim-bufferline.lua", requires = "kyazdani42/nvim-web-devicons" })

	-- telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- auto completion
	use("hrsh7th/nvim-compe")

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
end)
