local lualine_theme = require('lualine.themes.auto')

lualine_theme.normal.c.bg = 'NONE'
lualine_theme.inactive.c.bg = 'NONE'

require("lualine").setup({
	options = { 
		theme = lualine_theme,
		-- theme = "auto",
	},
})

