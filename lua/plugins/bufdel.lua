return {
	'ojroques/nvim-bufdel',
	lazy = false,
	config = function()
		require('bufdel').setup({
			next = 'cycle',
			quit = false,
		})
	end
}
