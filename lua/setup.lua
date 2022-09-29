
--------------------------
--    Packer Setup      --
--------------------------

local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local install_plugins = true

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	print('Installing packer...')
	local packer_url = 'https://github.com/wbthomason/packer.nvim'
	vim.fn.system({'git', 'clone', '--depth', '1', packer_url, install_path})
	print('Done.')

	vim.cmd('packadd packer.nvim')
	install_plugins = true
end


--------------------------
-- Plugin Installation  --
--------------------------

require('packer').startup(function(use)
	use {'wbthomason/packer.nvim',
		git = {
			cmd = 'git',
			subcommands = {
				update = 'pull --ff-only --progress',
				install = 'clone --depth %i --no-single-branch --progress',
			},
		},
	}
	use {'nvim-lualine/lualine.nvim'}
	use {'famiu/bufdelete.nvim'}
	use {'nvim-lua/popup.nvim'}
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
	use {'ojroques/vim-oscyank'}
	use {'nvim-neo-tree/neo-tree.nvim',
		requires = { 
			'nvim-lua/plenary.nvim',
			'MunifTanjim/nui.nvim',
		}
	}
	use {'goolord/alpha-nvim',
		requires = { 'kyazdani42/nvim-web-devicons' },
		config = function() require('plugins.alpha') end,
	}
	use {'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
	}

	use {'L3MON4D3/LuaSnip'}

	use {'hrsh7th/nvim-cmp',
		event = 'InsertEnter',
		config = function() require('plugins.cmp') end,
	}

	use {'saadparwaiz1/cmp_luasnip',
		requires = 'nvim-cmp'
	}

	use {'hrsh7th/cmp-buffer',
		requires = 'nvim-cmp'
	}

	use {'hrsh7th/cmp-path',
		requires = 'nvim-cmp'
	}

	use {'hrsh7th/cmp-nvim-lsp',
		requires = 'nvim-cmp'
	}

	use {'williamboman/mason.nvim'}

	use {'WhoIsSethDaniel/mason-tool-installer.nvim',
    	requires = "mason.nvim",
	}

	use {'neovim/nvim-lspconfig'}

	use {'jayp0521/mason-null-ls.nvim',
		requires = { "mason.nvim", "null-ls.nvim" }
	}

	use {'williamboman/mason-lspconfig.nvim',
		requires = { "mason.nvim", "nvim-lspconfig" },
	}

	use {'jose-elias-alvarez/null-ls.nvim',
		requires = {'nvim-lua/plenary.nvim'},
    	event = { "BufRead", "BufNewFile" }
	}

	if install_plugins then
		require('packer').sync()
	end
end)
