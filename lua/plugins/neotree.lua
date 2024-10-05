return {
	'nvim-neo-tree/neo-tree.nvim',
	branch = "v3.x",
	lazy = false,
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons',
		'MunifTanjim/nui.nvim',
		'3rd/image.nvim',
		{
			's1n7ax/nvim-window-picker',
			version = '2.*',
			config = function()
				require 'window-picker'.setup({
					filter_rules = {
						include_current_win = false,
						autoselect_one = true,
						bo = {
							filetype = { 'neo-tree', "neo-tree-popup", "notify" },
							buftype = { 'terminal', "quickfix" },
						},
					}
				})
			end
		}
	},
	config = function()
		local neotree = require('neo-tree')

		local opts = { noremap = true, silent = true }

		vim.keymap.set({ 'n', 'v' }, '<C-b>', ':Neotree reveal<cr>', opts)
		vim.keymap.set('i', '<C-b>', '<esc>:Neotree reveal<cr>', opts)
		vim.keymap.set({ 'n', 'v' }, '<C-tab>', ':Neotree toggle<cr>', opts)
		vim.keymap.set('i', '<C-n>', '<esc>:Neotree toggle<cr>', opts)

		vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
		vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
		vim.fn.sign_define('DiagnosticSignInfo', { text = " ", texthl = "DiagnosticSignInfo" })
		vim.fn.sign_define('DiagnosticSignHint', { text = "", texthl = "DiagnosticSignHint" })

		neotree.setup({
			close_if_last_window = true,
			popup_border_style = "rounded",
			enable_git_status = true,
			enable_diagnostics = true,
			open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
			sort_case_insensitive = false,
			default_component_configs = {
				icon = {
					folder_closed = " ",
					folder_open = " ",
					folder_empty = " ",
					default = " ",
					highlight = "NeoTreeFileIcon"
				},
				modified = {
					symbol = " ",
					highlight = "NeoTreeModified",
				},
				git_status = {
					--change type
					added = " ",
					modified = " ",
					deleted = "󰗨 ",
					renamed = " ",
					--status type
					untracked = "󱋡 ",
					ignored = " ",
					unstaged = "󱤠 ",
					staged = "󱤟 ",
					conflict = "󰩋 "
				}
			}
		})
	end,
}
