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
		requires = { 'kyazdani42/nvim-web-devicons' },
		config = function() require('alpha').setup(require('plugins.alpha').config) end,
	}

	-- Status Line --
	use {'nvim-lualine/lualine.nvim',
		config = function() require('plugins.lualine') end
	}

	-- Clipboard and popups utils --
	use {'nvim-lua/popup.nvim'}
	use {'ojroques/vim-oscyank'}

	-- Open File Tabs --
	use {'akinsho/bufferline.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function() require('plugins.bufferline') end
	}

	-- File Explorer --
	use {'nvim-neo-tree/neo-tree.nvim',
		branch = "v2.x",
		requires = {
			'nvim-lua/plenary.nvim',
			'MunifTanjim/nui.nvim',
		},
		config = function() require('plugins.neotree') end
	}

	-- Code highlighting --
	use {'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
		config = function() require('plugins.treesitter') end
	}

	-- Comment plugin --
	use {'terrortylor/nvim-comment',
		config = function() require('nvim_comment').setup() end
	}

	-- Auto parentheses --
	use {'windwp/nvim-autopairs',
		config = function() require('nvim-autopairs').setup() end
	}

	-- LSP --
	use {'neovim/nvim-lspconfig'}
	use {'williamboman/mason.nvim',
		config = function() require('mason').setup {} end
	}

	use {'williamboman/mason-lspconfig.nvim',
		config = function()
			require('mason-lspconfig').setup()
			require("mason-lspconfig").setup_handlers({
				function (server_name)
					require("lspconfig")[server_name].setup {}
				end
			})
		end,
	}

	use {'mfussenegger/nvim-lint',
		config = function()
			require('lint').linters_by_ft = {
				bash = {'shellcheck'},
				cpp = {'cpplint'},
				css = {'stylelint'},
				scss = {'stylelint'},
				javascript = {'jshint'},
				lua = {'luacheck'},
				markdown = {'vale'},
				php = {'php'},
				python = {'pylint'},
			}
		end
	}

	use {'folke/trouble.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function() require("trouble").setup() end
	}

	use {'NvChad/nvim-colorizer.lua',
		config = function() require('colorizer').setup() end
	}

	if install_plugins then
		require('packer').sync()
	end
end)
