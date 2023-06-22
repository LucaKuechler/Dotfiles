local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

return require("lazy").setup({
	-- Icons
	{ "kyazdani42/nvim-web-devicons", lazy = true },
	{ "ryanoasis/vim-devicons", lazy = true },

	-- File Explorer
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
	},

	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		-- cmd = "Telescope",
	},

	-- toogle code commments
	"terrortylor/nvim-comment",

	-- better syntax highlighting
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = {
			-- jump to code symbols
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
	},

	-- lsp setup
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
	},

	-- auto completion
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"onsails/lspkind-nvim",
			"hrsh7th/cmp-vsnip",
			"hrsh7th/vim-vsnip",
			"hrsh7th/cmp-nvim-lsp-signature-help",
			{
				"tzachar/cmp-tabnine",
				build = "./install.sh",
			},
		},
	},

	-- color theme
	"navarasu/onedark.nvim",

	-- async linter
	"mfussenegger/nvim-lint",

	-- formatter
	"mhartington/formatter.nvim",

	-- diagnostic popup
	{
		"folke/trouble.nvim",
		dependencies = "kyazdani42/nvim-web-devicons",
	},

	-- git
	{
		"lewis6991/gitsigns.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},

	-- indentation
	"lukas-reineke/indent-blankline.nvim",

	-- auto pairs ( -> ()
	"windwp/nvim-autopairs",

	-- debuger
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"mfussenegger/nvim-dap-python",
			"leoluz/nvim-dap-go",
			"rcarriga/nvim-dap-ui",
		},
	},

	-- better comments
	{
		"folke/todo-comments.nvim",
		dependencies = "nvim-lua/plenary.nvim",
	},

	-- project management
	"ahmedkhalf/project.nvim",

	-- lua line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"kyazdani42/nvim-web-devicons",
		},
	},

	-- startup time
	{ "dstein64/vim-startuptime" },

	-- go tests
	{ "buoto/gotests-vim" },

	defaults = { lazy = true },
	checker = { enabled = true },
	change_detection = {
		notify = false,
	},
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"matchit",
				"matchparen",
				"netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})
