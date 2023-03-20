local status_ok, wk = pcall(require, 'which-key')
if not status_ok then return end

wk.register({
  a = "Select All",
  y = "Copy (clipboard)",
  p = "Paste (clipboard)",
  d = "Cut (clipboard)",
  e = "File Explorer",
  q = "Close Buffer",
  w = "Save File",
  t = {
    name = "Telescope",
    b = "Buffers",
    f = "Find All Files",
    g = "Git Files",
    r = "Live Grep",
    h = "Help"
  },
  h = {
    name = "Harpoon",
    m = "Mark File",
    t = "Toggle UI",
  }
}, { prefix = "<leader>" })

wk.register({
  g = {
    d = "Go To Definntion",
    D = "Go To Declaration",
    r = "List References",
    l = "Show Diagnostic Popup Under Cursor",
  },
})
