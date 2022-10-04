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
	use {'famiu/bufdelete.nvim'}
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
		config = function()
			require('plugins.treesitter')
			vim.cmd('TSEnable highlight')
		end
	}

	-- Autocomplete plugins --
	use {'neovim/nvim-lspconfig'}
	use {'hrsh7th/nvim-cmp'}
	use {'hrsh7th/cmp-buffer'}
	use {'hrsh7th/cmp-path'}
	use {'saadparwaiz1/cmp_luasnip'}
	use {'hrsh7th/cmp-nvim-lsp'}
	use {'hrsh7th/cmp-nvim-lua'}
	use {'L3MON4D3/LuaSnip'}

	use {"williamboman/nvim-lsp-installer",
    	requires = "neovim/nvim-lspconfig"
	}

	-- Comment plugin --
	use {'terrortylor/nvim-comment',
		config = function() require('nvim_comment').setup() end
	}
	

	use {"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function() require("trouble").setup({}) end
	}

	if install_plugins then
		require('packer').sync()
	end
end)
