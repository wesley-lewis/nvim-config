local dat_file = ".dat"

local function read_file(filepath)
	local file = io.open(filepath, "r")
	if not file then return "gruvbox" end
	local content = file:read "*all"
	file:close()
	return content
end

local function write_dat_file(filepath, data)
	local file = io.open(filepath, "w")
	if not file then 
		print("ERROR: unable to write to file")
	end
	file:write(data)
	file:close()
end

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
	palette_overrides = {
		-- dark0_hard = "#070707",
	},
	dim_inactive = true,
})

require("rose-pine").setup({
	dim_inactive_windows = true,
	styles = {
		-- transparency = true,
	}
})

require("tokyodark").setup({
	transparent_background = false,
	terminal_colors = true,
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
	write_dat_file(dat_file, "gruvbox")
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
	write_dat_file(dat_file, "gruvbox")
	vim.cmd("colorscheme gruvbox")
end

function rose_pine_transparent() 
	-- `rose-pine`
	require("rose-pine").setup({
		styles = {
			transparency = true,
		}
	})
	write_dat_file(dat_file, "rose-pine")
	vim.cmd("colorscheme rose-pine")
end

function rose_pine_opaque()
	require("rose-pine").setup({
		dim_inactive_windows = true,
		styles = {
			transparency = false,
		}
	})
	write_dat_file(dat_file, "rose-pine")
	vim.cmd("colorscheme rose-pine")
end

function tokyodark_opaque()
	require("tokyodark").setup({
		transparent_background = false,
		terminal_colors = true,
	})
	write_dat_file(dat_file, "tokyodark")
	vim.cmd("colorscheme tokyodark")
end

function tokyodark_transparent()
	require("tokyodark").setup({
		transparent_background = true,
		terminal_colors = true,
	})
	write_dat_file(dat_file, "tokyodark")
	vim.cmd("colorscheme tokyodark")
end

-- gruvbox material
vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_dim_inactive_windows = true
-- vim.g.gruvbox_material_visual = "green background"
vim.g.gruvbox_material_statusline_style = "original" 
vim.g.gruvbox_material_enable_italic = 0
vim.g.gruvbox_material_disable_italic_comment = 1

-- Setting the colorscheme
local colorscheme = read_file(dat_file)
print(colorscheme)
vim.cmd("colorscheme " .. colorscheme)
