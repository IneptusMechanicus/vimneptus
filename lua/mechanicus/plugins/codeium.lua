local vim = vim
return {
  'Exafunction/codeium.vim',
  config = function()
    vim.g.codeium_disable_bindings = 1
    vim.g.codeium_manual = true
    vim.keymap.set('i', '<C-a>', function() return vim.fn['codeium#Accept']() end, { expr = true })
    vim.keymap.set('i', '<C-c>', function() return vim.fn['codeium#Complete']() end, { expr = true })
    vim.keymap.set('i', '<C-s>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
    vim.keymap.set('i', '<C-d>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
    vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
  end
}
