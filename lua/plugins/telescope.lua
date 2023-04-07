return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-file-browser.nvim'
  },
  config = function()
    local vim = vim
    local telescope = require('telescope')
    local builtin = require('telescope.builtin')
    telescope.setup({
      defaults = {
        layout_config = {
          prompt_position = 'top'
        },
        sorting_strategy = 'ascending',
        file_ignore_patterns = {
          "node_modules"
        }
      },
      extensions = {
        file_browser = {
          hijack_netrw = true,
        },
      }
    })

    telescope.load_extension "file_browser"

    vim.keymap.set('n', '<leader>tf', function ()
      builtin.find_files({no_ignore = true}) 
    end, {})
    vim.keymap.set('n', '<leader>tg', builtin.git_files, {})
    vim.keymap.set('n', '<leader>tr', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>tb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>th', builtin.help_tags, {})
  end
}
