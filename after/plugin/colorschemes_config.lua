require("gruvbox").setup({
	contrast = "hard",
	transparent_mode = true,
})

require("nord").setup({
	transparent = true,
})

require("rose-pine").setup({
	dim_inactive_windows = true,
	enable = {
		terminal = true,
	},
	styles = {
		transparency = true,
		italic = false,
	}
})


-- Setting the colorscheme
vim.cmd("colorscheme rose-pine-main")
