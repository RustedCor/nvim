return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		local bufferline = require('bufferline')
		bufferline.setup({
			options = {
				themable = true,
				diagnostics = "nvim_lsp",
				close_icon = "󱄊 ",
				modified_icon = " ",
				style_preset = bufferline.style_preset.default,
				diagnostics_indicator = function(count, level)
					local icon = level:match("error") and " " or "󰈛"
					return " " .. icon .. count
				end,
				tab_size = 20,
				color_icons = true,
				get_element_icon = function(element)
					local icon, hl = require('nvim-web-devicons').get_icon_by_filetype(element.filetype, { default = false })
					return icon, hl
				end,
				show_buffer_icons = true,
				persist_buffer_sort = true,
				separator_style = "slant",
				sort_by = 'id',
				offsets = {
					{
						filetype = "neo-tree",
						text = function()
							return vim.fn.getcwd()
						end,
						text_align = "center",
						highlight = "Directory",
						separator = true
					},
				}
			}
		})
		local opts = { noremap = true, silent = true }
		vim.api.nvim_set_keymap('n', '<a-1>', '<cmd>lua require("bufferline").go_to(1, true)<CR>', opts)
		vim.api.nvim_set_keymap('n', '<a-2>', '<cmd>lua require("bufferline").go_to(2, true)<CR>', opts)
		vim.api.nvim_set_keymap('n', '<a-3>', '<cmd>lua require("bufferline").go_to(3, true)<CR>', opts)
		vim.api.nvim_set_keymap('n', '<a-4>', '<cmd>lua require("bufferline").go_to(4, true)<CR>', opts)
		vim.api.nvim_set_keymap('n', '<a-5>', '<cmd>lua require("bufferline").go_to(5, true)<CR>', opts)
		vim.api.nvim_set_keymap('n', '<a-6>', '<cmd>lua require("bufferline").go_to(6, true)<CR>', opts)
		vim.api.nvim_set_keymap('n', '<a-7>', '<cmd>lua require("bufferline").go_to(7, true)<CR>', opts)
		vim.api.nvim_set_keymap('n', '<a-8>', '<cmd>lua require("bufferline").go_to(8, true)<CR>', opts)
		vim.api.nvim_set_keymap('n', '<a-9>', '<cmd>lua require("bufferline").go_to(9, true)<CR>', opts)
		vim.api.nvim_set_keymap('n', '<a-0>', '<cmd>lua require("bufferline").go_to(-1, true)<CR>', opts)
	end,
}
