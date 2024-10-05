vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.expandtab = false
	end
})
--
-- Create an autocmd group
local format_group = vim.api.nvim_create_augroup("AutoFormatOnSave", { clear = true })

-- Define the autocmd to format on save
vim.api.nvim_create_autocmd("BufWritePre", {
	group = format_group,
	pattern = "*",   -- Apply to all file types
	callback = function()
		vim.lsp.buf.format({ async = false })
	end
})

vim.opt.clipboard = "unnamedplus"
