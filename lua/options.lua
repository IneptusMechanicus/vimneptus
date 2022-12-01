local vim = vim

-- .1 General --
vim.opt.number = true
vim.opt.numberwidth = 7
vim.opt.mouse = 'a'
vim.opt.list = true
vim.opt.lazyredraw = true
vim.opt.wrap = false
vim.opt.clipboard = 'unnamedplus'

-- .2 Search --
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true

-- .3 Tabs, Spaces, Newlines --
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.relativenumber = true

-- 4. Special characters
vim.opt.fillchars='eob: '
vim.opt.listchars='tab:| ,trail:*,eol:¬'
