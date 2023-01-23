local status_ok, wk = pcall(require, 'which-key')
if not status_ok then return end

wk.register({
	a = "Select All",
	c = "Copy (clipboard)",
	v = "Paste (clipboard)",
	e = "File Explorer",
	q = "Close Buffer",
	w = "Save File",
	d = "Toggle Diagnostics",
	t = {
		name = "Telescope",
		b = "Buffers",
		f = "Find Files",
		g = "Live Grep",
		h = "Help"
	},
	h = {
		name = "Harpoon",
		m = "Mark File",
		t = "Toggle UI",
	}
}, { prefix = "<leader>" })
