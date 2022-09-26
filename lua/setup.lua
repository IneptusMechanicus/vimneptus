
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
	use {'wbthomason/packer.nvim'}
	use {'nvim-lualine/lualine.nvim'}
	use {"famiu/bufdelete.nvim"}
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
	use {"nvim-neo-tree/neo-tree.nvim",
		requires = { 
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
		}
	}
	use {
		'goolord/alpha-nvim',
		requires = { 'kyazdani42/nvim-web-devicons' }
	}

	if install_plugins then
		require('packer').sync()
		require('configs')
	else
		require('configs')
	end
end)
