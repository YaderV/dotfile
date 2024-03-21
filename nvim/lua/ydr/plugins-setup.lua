vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- packer it self
	use("wbthomason/packer.nvim")

	-- surround
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	})

	-- autopairs
	use({
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- nvim-tree
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
	})

	-- comments
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	-- telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- lualine
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	-- git
	use("lewis6991/gitsigns.nvim")

	-- tree sitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- buffer
	use("matbme/JABS.nvim")

	-- dashboard
	use({
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("dashboard").setup({
				-- config
			})
		end,
		requires = { "nvim-tree/nvim-web-devicons" },
	})

	-- formatter
	use("mhartington/formatter.nvim")

	-- linter
	use("mfussenegger/nvim-lint")

	-- lsp
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
	})

	-- theme
	use({ "rose-pine/neovim", as = "rose-pine" })
	use({ "ellisonleao/gruvbox.nvim" })
	use({
		"chama-chomo/grail",
		config = function()
			require("grail").setup()
		end,
	})
	use("folke/tokyonight.nvim")
	use("shaunsingh/nord.nvim")
	use("Yazeed1s/minimal.nvim")
	use("rebelot/kanagawa.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })
	use("jacoborus/tender.vim")
	use("jacoborus/tender.vim")
	use({ "bluz71/vim-nightfly-colors", as = "nightfly" })
end)
