require("gruvbox").setup({
	terminal_colors = true,
	contrast = "hard",
	bold = false,
	italic = {
		strings = false, comments = false,
	},
	-- overrides = {
            -- ["Comment"] = { fg = "#2ea542" },
	-- },
	dim_inactive = true,
})

require("rose-pine").setup({
	dim_inactive_windows = true,
	styles = {
		-- transparency = true,
	}
})

function gruvbox_transparent() 
	require("gruvbox").setup({
		transparent_mode = true,
		dim_inactive = true,
		terminal_colors = true,
		contrast = "hard",
		bold = false,
		italic = {
			strings = false, comments = false,
		},
	})
	vim.cmd("colorscheme gruvbox")
end

function gruvbox_opaque()
	require("gruvbox").setup({
		terminal_colors = true,
		contrast = "hard",
		bold = false,
		italic = {
			strings = false, comments = false,
		},
		-- overrides = {
				-- ["Comment"] = { fg = "#2ea542" },
		-- },
		dim_inactive = true,
		transparent_mode = false,
	})
	vim.cmd("colorscheme gruvbox")
end

function rose_pine_transparent() 
	-- `rose-pine`
	require("rose-pine").setup({
		styles = {
			transparency = true,
		}
	})
	vim.cmd("colorscheme rose-pine")
end

function rose_pine_opaque()
	require("rose-pine").setup({
		dim_inactive_windows = true,
		styles = {
			transparency = false,
		}
	})
	vim.cmd("colorscheme rose-pine")
end

-- gruvbox material
vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_dim_inactive_windows = true
-- vim.g.gruvbox_material_visual = "green background"
vim.g.gruvbox_material_statusline_style = "original" 
vim.g.gruvbox_material_enable_italic = 0
vim.g.gruvbox_material_disable_italic_comment = 1

-- Setting the colorscheme
vim.cmd("colorscheme gruvbox")
