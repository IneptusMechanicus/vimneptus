local cmp_lsp_ok, cmp_lsp = pcall(require, 'cmp_nvim_lsp')
if not cmp_lsp_ok then return end

local lsp_ok, lsp = pcall(require, 'lspconfig')
if not lsp_ok then return end

local vim = vim

local lsp_defaults = {
	flags = {
		debounce_text_changes = 150,
	},
	capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities()),
}

lsp.util.default_config = vim.tbl_deep_extend(
	'force',
	lsp.util.default_config,
	lsp_defaults
)
