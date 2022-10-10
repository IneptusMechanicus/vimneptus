local mason_ok, mason = pcall(require, 'mason-lspconfig')
if not mason_ok then return end

local lsp_ok, lsp = pcall(require, 'lspconfig')
if not lsp_ok then return end


mason.setup()
mason.setup_handlers({
	function (server_name)
		lsp[server_name].setup {}
	end
})
