local status_ok, tsconf = pcall(require, 'nvim-treesitter.configs')
if not status_ok then return end

tsconf.setup({
  highlight = { enable = true }
})
