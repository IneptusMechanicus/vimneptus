local status_ok, bufferline = pcall(require, 'bufferline')
if not status_ok then return end

bufferline.setup({
	options = {
		hover = {
			enabled = true,
			delay = 200
		},
		offsets = {
			{
				filetype = "neo-tree",
				text = "Files",
				highlight = "Directory",
				separator = true -- use a "true" to enable the default, or set your own character
			}
		},
		separator_style = "slant",
		close_command = "Bdelete! %d"
	}
})
