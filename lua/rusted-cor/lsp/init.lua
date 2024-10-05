local M = {}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

function M.setup(on_attach)
	require('rusted-cor.lsp.lua').setup(on_attach, capabilities)
end

return M
