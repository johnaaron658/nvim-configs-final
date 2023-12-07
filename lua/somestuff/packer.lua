vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use {
		'folke/tokyonight.nvim',
		as = 'tokyonight',
		config = function()
			vim.cmd('colorscheme tokyonight-night')
		end
	}
	use {
		'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }
	}
	use {
		'ThePrimeagen/harpoon'
	}
	use {
		'numToStr/Comment.nvim',
	}
	use {
		'mbbill/undotree'
	}
	use {
		'tpope/vim-fugitive'
	}
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'L3MON4D3/LuaSnip' },
		}
	}
	use {
		'natecraddock/workspaces.nvim'
	}
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}
	use {
		'akinsho/flutter-tools.nvim',
	}
	use {
		'f-person/git-blame.nvim',
	}
	use {
		'NvChad/nvterm'
	}
end)
