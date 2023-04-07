return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local palette = {
      white = '#e6c68a',
      black = '#000000',
      yellow = '#e6f074',
      green = '#88c288',
      blue = '#7abcf5',
      base1 = '#302f27',
    }

    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = {
          normal = {
            a = {bg = palette.white, fg = palette.black, gui = 'bold'},
            b = {bg = palette.base1, fg = palette.white},
            c = {bg = palette.black, fg = palette.white}
          },
          insert = {
            a = {bg = palette.green, fg = palette.black, gui = 'bold'},
            b = {bg = palette.base1, fg = palette.white},
            c = {bg = palette.black, fg = palette.white}
          },
          visual = {
            a = {bg = palette.yellow, fg = palette.black, gui = 'bold'},
            b = {bg = palette.base1, fg = palette.white},
            c = {bg = palette.black, fg = palette.white}
          },
          command = {
            a = {bg = palette.blue, fg = palette.black, gui = 'bold'},
            b = {bg = palette.base1, fg = palette.white},
            c = {bg = palette.black, fg = palette.white}
          }
        },
        component_separators = '|',
        section_separators = ' ',
        disabled_filetypes = {'packer'}
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff'},
        lualine_c = {{
          'filename',
          path = 1
        }},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
    })
  end
}
