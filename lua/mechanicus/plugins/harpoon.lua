return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    local vim = vim
    local harpoon = require('harpoon')

    harpoon:setup()

    vim.keymap.set('n', '<leader>ht', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc = 'Toggle'})
    vim.keymap.set('n', '<leader>hm', function() harpoon:list():append() end, {desc = 'Mark'})
    vim.keymap.set('n', '<leader>h[', function() harpoon:list():prev() end, {desc = 'Previous'})
    vim.keymap.set('n', '<leader>h]', function() harpoon:list():next() end, {desc = 'Next'})
  end
}
