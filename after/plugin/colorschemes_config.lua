require("gruvbox").setup({
	contrast = "hard",
	dim_inactive = true,
	-- transparent_mode = true,
})

require("nord").setup({
	-- transparent = true,
})

require("rose-pine").setup({
	dim_inactive_windows = true,
	enable = {
		terminal = true,
	},
	styles = {
		-- transparency = true,
		italic = false,
	}
})

vim.g.rasmus_variant = "monochrome"

-- Setting the colorscheme
vim.cmd("colorscheme rasmus")
