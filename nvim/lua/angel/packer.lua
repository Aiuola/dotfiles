-- This file can be loaded by calling `lua require('plugins')` from your init.vim

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		'folke/tokyonight.nvim'
	}

	use {
		'ThePrimeagen/vim-be-good'
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use {
		'nvim-treesitter/playground'
	}

	use {
		'ThePrimeagen/harpoon'
	}

	use {
		'mbbill/undotree'
	}

	use {
		'tpope/vim-fugitive'
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
                requires = {
                        -- LSP Support
                        {'neovim/nvim-lspconfig'},             -- Required
                        {                                      -- Optional
                        'williamboman/mason.nvim',
                        run = function()
                                pcall(vim.cmd, 'MasonUpdate')
                        end,
                    },
                    {'williamboman/mason-lspconfig.nvim'}, -- Optional

                    -- Autocompletion
                    {'hrsh7th/nvim-cmp'},     -- Required
                    {'hrsh7th/cmp-nvim-lsp'}, -- Required
                    {'L3MON4D3/LuaSnip'},     -- Required
		}
	}

	use({
	    "iamcco/markdown-preview.nvim",
	    run = function() vim.fn["mkdp#util#install"]() end,
	})

        use {
            'natebosch/vim-lsc'
        }

        -- Unless you are still migrating, remove the deprecated commands from v1.x
        vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

        use {
          "nvim-neo-tree/neo-tree.nvim",
            branch = "v2.x",
            requires = {
              "nvim-lua/plenary.nvim",
              "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
              "MunifTanjim/nui.nvim",
            }
        }
end)
