require('options')
require('keybindings')
require('commands')
require('setup')


local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/lualine.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) <= 0 then
-- require('autocomplete')
	vim.cmd('set list')
	vim.cmd('colorscheme mechanicus')
end
