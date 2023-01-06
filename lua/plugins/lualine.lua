local status_ok, lualine = pcall(require, 'lualine')
if not status_ok then return end

lualine.setup({
	options = {
		icons_enabled = true,
		theme = 'auto',
		component_separators = '|',
		section_separators = ' ',
		disabled_filetypes = {'packer'}
	}
})
