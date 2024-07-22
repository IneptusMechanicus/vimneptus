local vim = vim

-- .1 General --
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.wrap = false
vim.opt.clipboard = 'unnamedplus'
vim.opt.showmode = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.colorcolumn = "80"
-- .2 Search --
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- 3. Indents --
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.smartindent = true

-- 4. Special characters
vim.opt.fillchars='eob: '
vim.opt.list = true
vim.opt.listchars='tab:| ,trail:·,eol:¬'

-- 5. Scrolling --
vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.isfname:append('@-@')

-- 6. UndoTree --
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true
