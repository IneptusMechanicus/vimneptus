require('options')
require('keybindings')
require('commands')
require('setup')

if vim.fn.empty(vim.fn.glob(install_path)) <= 0 then
	require('configs')
end
