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
