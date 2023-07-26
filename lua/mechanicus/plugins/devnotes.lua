local M = {}

local plugin_path = os.getenv('NVIM_DEVNOTES_PATH')
if vim.fn.empty(vim.fn.glob(plugin_path)) > 0 then
  M = {'IneptusMechanicus/devnotes.nvim'}
else
  M.dir = plugin_path
end

M.config = function() require('devnotes').setup() end
M.dependencies = {
    'kkharji/sqlite.lua',
    'nvim-lua/plenary.nvim'
  }

return M
