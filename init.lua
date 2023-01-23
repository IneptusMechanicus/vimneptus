require('options')
require('keybindings')
require('commands')
require('lazy')

local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/mechanicus.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) <= 0 then
	vim.cmd('colorscheme mechanicus')
end
