--------------------------
-- Plugin Configuration --
--------------------------


--      .1 Lualine      --

require('lualine').setup({
	options = {
		icons_enabled = true,
		theme = 'auto',
		component_separators = '|',
		section_separators = '',
		disabled_filetypes = { 'packer', 'neo-tree' }
	}
})

--     .2 NeoTree       --

require("neo-tree").setup({
	default_component_configs = {
		indent = {
			with_markers = true,
			indent_marker = "│",
			last_indent_marker = "└",
			indent_size = 2,
			with_expanders = true,
			expander_collapsed = "",
			expander_expanded = "",
			expander_highlight = "NeoTreeExpander",
		},
	},
})


-- .3 Bufferline (Tabs) --

require('bufferline').setup({
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

-- Start Screen --

require'alpha'.setup(require('startscreen').config)
