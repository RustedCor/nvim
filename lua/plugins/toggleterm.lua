return {
	'akinsho/toggleterm.nvim',
	version = "*",
	config = function()
		local toggleterm = require('toggleterm')
		toggleterm.setup({
			size = function(term)
				if term.direction == "horizontal" then
					return 15
				elseif term.direction == "vertical" then
					return vim.o.columns * 0.4
				end
			end,
			open_mapping = [[<c-`>]],
			shade_terminals = true,
			shading_factor = 2,
			hide_numbers = true,
			start_in_insert = true,
			persist_size = true,
			persist_mode = true,
			direction = 'float',
			float_opts = {
				border = "curved",
				title_pos = 'left',
			},
			close_on_exit = true,
			shell = vim.o.shell,
			auto_scroll = true,
			winbar = {
				enabled = true,
				name_formatter = function(term) --  term: Terminal
					return "Terminal #" .. term.name:sub(#term.name)
				end
			},
		})
		function _G.set_terminal_keymaps()
			local opts = { noremap = true, silent = true }
			vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
			vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
			vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
			vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
			vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
			vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
		end

		vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
	end,
	lazy = false
}
