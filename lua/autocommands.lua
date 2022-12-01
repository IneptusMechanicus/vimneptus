local api = vim.api

 -- smart indent by default
  api.nvim_create_autocmd(
    'BufEnter',
    { command = "set autoindent"}
  )
