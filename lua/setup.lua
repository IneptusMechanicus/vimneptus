
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
			cmd = 'git', -- The base command for git operations
			subcommands = { -- Format strings for git subcommands
				update = 'pull --ff-only --progress',
				install = 'clone --depth %i --no-single-branch --progress',
				fetch = 'fetch --depth 999999 --progress',
				checkout = 'checkout %s --',
				update_branch = 'merge --ff-only @{u}',
				current_branch = 'branch --show-current',
				diff = 'log --color=never --pretty=format:FMT --no-show-signature HEAD@{1}...HEAD',
				diff_fmt = '%%h %%s (%%cr)',
				get_rev = 'rev-parse --short HEAD',
				get_msg = 'log --color=never --pretty=format:FMT --no-show-signature HEAD -n 1',
				submodules = 'submodule update --init --recursive --progress'
			},
		},
	}
	use {'nvim-lualine/lualine.nvim'}
	use {'famiu/bufdelete.nvim'}
	use {'nvim-lua/popup.nvim'}
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
	use {'nvim-neo-tree/neo-tree.nvim',
		requires = { 
			'nvim-lua/plenary.nvim',
			'MunifTanjim/nui.nvim',
		}
	}
	use {'goolord/alpha-nvim',
		requires = { 'kyazdani42/nvim-web-devicons' }
	}
	use {'nvim-treesitter/nvim-treesitter',
		run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
	}
	if install_plugins then
		require('packer').sync()
	end
end)
