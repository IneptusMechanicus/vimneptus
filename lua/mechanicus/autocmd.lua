local Mechanicus = vim.api.nvim_create_augroup('Mechanicus', {})

vim.api.nvim_create_autocmd('Filetype', {
  group = Mechanicus,
  pattern = { 'lua', 'python'},
  command = 'setlocal shiftwidth=2 tabstop=2 expandtab'
})

vim.api.nvim_create_autocmd('Filetype', {
  group = Mechanicus,
  pattern = {'php'},
  command = 'setlocal autoindent'
})
