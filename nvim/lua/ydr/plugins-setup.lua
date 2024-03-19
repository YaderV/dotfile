vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use) 
	-- packer it self
	use 'wbthomason/packer.nvim'

	-- surround
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	})

	-- autopairs
	use {
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup {}
		end
	}

	-- nvim-tree
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}

	-- comments
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	-- telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- lualine
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	-- git
	use 'lewis6991/gitsigns.nvim'

	-- theme
	use { "rose-pine/neovim", as = "rose-pine" }
	use { "ellisonleao/gruvbox.nvim" }
	use {
		"chama-chomo/grail",
		config = function()
			require("grail").setup()
		end
	}
	use "folke/tokyonight.nvim"
	use 'shaunsingh/nord.nvim'

	-- tree sitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
end)
