-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim') -- plugin manager

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  -- Snippet Collection (Optional)
		  {'rafamadriz/friendly-snippets'},
	  }
  }
  use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}) --syntax highlighter
  use('nvim-treesitter/playground') -- run : TSPlaygroundToggle
  use('theprimeagen/harpoon') -- file navigator
  use('mbbill/undotree') -- review changes : leader + u
  use('tpope/vim-fugitive') -- work with git : leader + gs
  use("savq/melange") -- colorscheme
  use('glepnir/dashboard-nvim') -- generate a dashboard
  use('preservim/nerdcommenter') -- commenter : ':help nerdcommenter' for keybinds.
  use {
      "windwp/nvim-autopairs", --generate autopairs
      config = function() require("nvim-autopairs").setup {} end
  }
  end)
