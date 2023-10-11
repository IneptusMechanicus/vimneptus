return {
  'sourcegraph/sg.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  build = 'nvim -l build/init.lua',
  config = function ()
    vim.keymap.set('n', '<leader>sc', '<cmd>CodyToggle<cr>')
  end
}
