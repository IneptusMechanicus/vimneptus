local vim = vim

vim.api.nvim_create_user_command(
  'ReloadPlugin',
  function(opts)
    require('plenary.reload').reload_module(opts.args)
  end,
  { nargs = 1 }
)

vim.api.nvim_create_user_command(
  'ReloadColorscheme',
  function(opts)
    require('plenary.reload').reload_module(opts.args)
    vim.cmd.colorscheme(opts.args)
  end,
  { nargs = 1 }
)
