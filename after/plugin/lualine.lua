local status_ok, lualine = pcall(require, 'lualine')
if not status_ok then return end

lualine.setup({
  options = {
    icons_enabled = true,
    theme = 'auto',
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
