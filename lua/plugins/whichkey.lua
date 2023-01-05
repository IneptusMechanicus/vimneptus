local wk = require("which-key")

wk.register({
	a = "Select All",
	c = "Copy (clipboard)",
	v = "Paste (clipboard)",
	e = "File Explorer",
	q = "Close Buffer",
	w = "Save File",
	r = "Harpoon Toggle",
	s = "Harpoon Mark",
	t = "Toggle Diagnostics",
	f = {
		name = "Telescope",
		b = "Buffers",
		f = "Find Files",
		g = "Live Grep",
		h = "Help"
	}
}, { prefix = "<leader>" })
