local M = {}

local colorscheme_path = os.getenv('NVIM_COLORSCHEME_PATH')
if vim.fn.empty(vim.fn.glob(colorscheme_path)) > 0 then
  M = {'IneptusMechanicus/mechanicus.nvim'}
else
  M.dir = colorscheme_path
end

M.config = function() vim.cmd.colorscheme('mechanicus') end

return M
