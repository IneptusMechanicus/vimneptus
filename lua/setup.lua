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

require('packer').startup({
	function(use)
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
			config = function() require('plugins.alpha') end
		}

		use {'folke/which-key.nvim',
			config = function() require('plugins.whichkey') end
		}

		-- Clipboard and popups utils --
		use {'ojroques/vim-oscyank'}

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

		use {'folke/trouble.nvim',
			requires = 'kyazdani42/nvim-web-devicons',
			config = function() require('plugins.trouble') end
		}

		-- Syntax and hex colours
		use {'NvChad/nvim-colorizer.lua',
			config = function() require('plugins.colorizer') end
		}

		use {'nvim-treesitter/nvim-treesitter',
			config = function() require('plugins.treesitter') end
		}

		-- LSP and Autocompletion
		use {'VonHeikemen/lsp-zero.nvim',
			requires = {
				-- LSP Support
				{'neovim/nvim-lspconfig'},
				{'williamboman/mason.nvim'},
				{'williamboman/mason-lspconfig.nvim'},
				{'hrsh7th/nvim-cmp'},
				{'hrsh7th/cmp-buffer'},
				{'hrsh7th/cmp-path'},
				{'saadparwaiz1/cmp_luasnip'},
				{'hrsh7th/cmp-nvim-lsp'},
				{'hrsh7th/cmp-nvim-lua'},
				{'L3MON4D3/LuaSnip'},
				{'rafamadriz/friendly-snippets'},
			},
			config = function() require('plugins.lsp') end
		}

		-- Advanced file stuff
		use {'ThePrimeagen/harpoon',
			requires = 'nvim-lua/plenary.nvim'
		}

		use {'nvim-telescope/telescope.nvim',
			requires = 'nvim-lua/plenary.nvim',
			config = function() require('plugins.telescope') end
		}

		use {'nvim-telescope/telescope-file-browser.nvim',
			config = function () require('plugins.telescope-file-browser') end
		}

		if install_plugins then
			require('packer').sync()
		end
	end,
	config = {
		display = {
			open_fn = require('packer.util').float,
		}
	}
})
