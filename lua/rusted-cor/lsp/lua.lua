local lspconfig = require('lspconfig')

local M = {}

function M.setup(on_attach, capabilities)
	lspconfig.lua_ls.setup({
		on_attach = on_attach,
		capabilities = capabilities,
		settings = {
			Lua = {
				workspace = { checkThirdParty = "Disable" },
			}
		}
	})
end

return M
