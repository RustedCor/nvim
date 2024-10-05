return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	opts = {
		options = {
			globalstatus = true,
			disabled_filetypes = {
				statusline = { "neo-tree" },
				winbar = { "neo-tree", "toggleterm" }
			},
		},
		sections = {
			lualine_c = { { "filename", file_status = true, path = 1, } },
			lualine_x = { "filetype", "filesize" },
			lualine_y = { "progress", "selectioncount", "searchcount" },
			lualine_z = { "location", "fileformat" }
		},
	},
}
