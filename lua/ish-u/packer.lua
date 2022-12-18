-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Catpuccin Theme
	use { "catppuccin/nvim", as = "catppuccin" }

	-- Telescope
	use { 'nvim-telescope/telescope.nvim',
		branch = '0.1.x',
		requires = { 'nvim-lua/plenary.nvim' }
	}

	-- LSP
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },
		}
	}

	-- Treesitter
	use { -- Highlight, edit, and navigate code
		'nvim-treesitter/nvim-treesitter',
		run = function()
			pcall(require('nvim-treesitter.install').update { with_sync = true })
		end,
	}

	-- GitSign
	use 'lewis6991/gitsigns.nvim'

	-- Lua Line - Status Line
	use 'nvim-lualine/lualine.nvim' -- Fancier statusline

	-- Indent Line
	use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines

	-- Comment
	use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines

	-- DevIcons
	use 'nvim-tree/nvim-web-devicons'

	-- Trouble
	use {
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	}
end)
