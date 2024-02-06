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

    vim.keymap.set('n', '<leader>ht', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    vim.keymap.set('n', '<leader>hm', function() harpoon:list():append() end)
    vim.keymap.set('n', '<leader>h[', function() harpoon:list():prev() end)
    vim.keymap.set('n', '<leader>h]', function() harpoon:list():next() end)
  end
}
