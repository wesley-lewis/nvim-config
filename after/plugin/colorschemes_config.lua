-- require("gruvbox").setup({
-- 	contrast = "hard",
-- 	dim_inactive = true,
-- 	bold = false,
-- 	-- transparent_mode = true,
-- })

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

require("onedark").setup({
	style = "deep",
})

-- vim.g.rasmus_variant = "monochrome"

vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_foreground = "mix"
vim.g.gruvbox_material_dim_inactive_windows = true
vim.g.gruvbox_material_visual = "green background"
-- vim.g.gruvbox_material_ui_contrast = "high"

-- Setting the colorscheme
vim.cmd("colorscheme gruvbox-material")
