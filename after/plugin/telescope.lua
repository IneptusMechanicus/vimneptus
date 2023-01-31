local builtin_ok, builtin = pcall(require, 'telescope.builtin')
if not builtin_ok then return end

local telescope_ok, telescope = pcall(require, 'telescope')
if not telescope_ok then return end

telescope.setup({
  defaults = {
    layout_config = {
      prompt_position = 'top'
    },
    sorting_strategy = 'ascending'
  },
  extensions = {
    file_browser = {
      hijack_netrw = true,
    },
  }
})

telescope.load_extension "file_browser"

vim.keymap.set('n', '<leader>tf', builtin.find_files, {})
vim.keymap.set('n', '<leader>tg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>tb', builtin.buffers, {})
vim.keymap.set('n', '<leader>th', builtin.help_tags, {})
