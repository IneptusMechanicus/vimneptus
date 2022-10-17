--------------------------
--    Packer Setup      --
--------------------------

local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local install_plugins = false

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

	-- Packer --
	use {'wbthomason/packer.nvim',
		git = {
			cmd = 'git',
			subcommands = {
				update = 'pull --ff-only --progress',
				install = 'clone --depth %i --no-single-branch --progress',
			},
		},
	}

	-- Start Screen --
	use {'goolord/alpha-nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function() require('plugins.alpha') end,
	}

	-- Clipboard and popups utils --
	use {'nvim-lua/popup.nvim'}
	use {'ojroques/vim-oscyank'}
	use {'famiu/bufdelete.nvim'}

	-- Files and Tabs --
	use {'akinsho/bufferline.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function() require('plugins.bufferline') end
	}

	use {'nvim-neo-tree/neo-tree.nvim',
		branch = 'v2.x',
		requires = {
			'nvim-lua/plenary.nvim',
			'kyazdan/nvim-web-devicons',
			'MunifTanjim/nui.nvim',
		},
		config = function() require('plugins.neotree') end
	}

	use {'nvim-lualine/lualine.nvim',
		config = function() require('plugins.lualine') end
	}

	-- Coding quick commands --
	use {'terrortylor/nvim-comment',
		config = function() require('plugins.comment') end
	}

	use {'windwp/nvim-autopairs',
		config = function() require('plugins.autopairs') end
	}

	-- LSP --
	use {'neovim/nvim-lspconfig'}
	use {'williamboman/mason.nvim',
		config = function() require('plugins.mason') end
	}

	use {'williamboman/mason-lspconfig.nvim',
		config = function() require('plugins.masonlsp') end,
	}

	use {'nvim-treesitter/nvim-treesitter',
		config = function() require('plugins.treesitter') end
	}

	-- Errors and Linting --

	use {'mfussenegger/nvim-lint',
		config = function() require('plugins.lint') end
	}

	use {'folke/trouble.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function() require('plugins.trouble') end
	}

	use {'NvChad/nvim-colorizer.lua',
		config = function() require('plugins.colorizer') end
	}

	-- Autocomplete --

	use {'hrsh7th/cmp-buffer'}
	use {'hrsh7th/cmp-path'}
	use {'saadparwaiz1/cmp_luasnip'}
	use {'hrsh7th/cmp-nvim-lsp'}
	use {'L3MON4D3/LuaSnip'}
	use {'hrsh7th/nvim-cmp',
		config = function () require('plugins.cmp') end
	}

	if install_plugins then
		require('packer').sync()
	end
end)
