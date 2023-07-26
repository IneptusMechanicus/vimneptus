return {
  'folke/noice.nvim',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },
  config = function()
    require('noice').setup({
      lsp = {
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true,
        },
      },
      presets = {
        bottom_search = true,
        command_palette = false,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
      },
      views = {
        cmdline_popup = {
          position = {
            row = '95%',
            col = '0%',
          },
          size = {
            width = 100,
            height = 'auto',
          },
        },
        popupmenu = {
          relative = 'editor',
          position = {
            row = '85%',
            col = '0%',
          },
          size = {
            width = 100,
            height = 10,
          },
          border = {
            style = 'rounded',
          },
          win_options = {
            winhighlight = { Normal = 'Normal', FloatBorder = 'WinBar' },
          },
        },
      },
      routes = {
        {
          filter = {
            kind = '',
            find = 'invalid node type at position 2765',
          },
          opts = { skip = true },
        },
      },
    })
  end
}
