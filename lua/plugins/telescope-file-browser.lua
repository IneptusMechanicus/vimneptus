local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then return end

telescope.setup({
	extensions = {
		file_browser = {
			hijack_netrw = true,
		},
	},
})
telescope.load_extension "file_browser"
