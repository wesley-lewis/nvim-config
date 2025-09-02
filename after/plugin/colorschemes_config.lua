local dat_file = "/home/wesley/.config/nvim/after/plugin/.dat"

local function read_file(filepath)
	local file = io.open(filepath, "r")
	if not file then return "gruvbox" end
	local content = file:read("*all")
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

require("xeno").new_theme(
	"xeno1",
	{
		base = "#1e1e1e",
		accent = "#8cbe8c",
	}
)
require("xeno").new_theme(
	"xeno2",
	{
		base = "#1e1e1e",
		accent = "#2c7bd3",
	}
)

require("solarized").setup({
	styles = {
		variables = { italic = false },
		functions = { italic = false },
	}
})

require("catppuccin").setup({
	no_bold = true,
	no_underline = true,
	no_italic = false,
})

require("onedark").setup({
	style = "dark",
	code_style = {
		comments = "none",
		keywords = "none",
		functions = "none",
		strings = "none",
		variables = "none",
	},
})

require("vscode").setup({
	-- transparent = true,
})

require("gruvbox").setup({
	contrast = "hard",
	-- transparent_mode = true,
	dim_inactive = false,
	bold = false,
	italic = {
		strings = false,
		emphasis = false,
		comments = true,
		operators = false,
		folds = true,
	},
	overrides = {
		-- Comment = { fg = "#2ea542" },
		Search = { fg = "#000000", bg = "Orange" },
		IncSearch = { fg = "#000000", bg = "Orange" },
	},
	inverse = false,
})

require("rose-pine").setup({
	dim_inactive_windows = false,
	styles = {
		bold = false,
		-- transparency = true,
		italic = false,
	},
	highlight_groups = {
		Cursor = { fg = "white" },
		Comment = { italic = true },
	},
})

require('catppuccin').setup({
	term_colors = true,
	no_italic = false,
	-- transparent_background = true,
	styles = {
		conditionals = { },
		functions = {},
		keywords = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	custom_highlights = {
		-- LineNr = { fg = "#ded8d0" },
	},
})

local function mellow_setup()
	vim.g.mellow_italic_keywords  = false
	vim.g.melloc_italic_booleans  = false
	vim.g.mellow_italic_functions = false
	vim.g.mellow_italic_variables = false
end
local function rasmus_setup()
	vim.g.rasmus_italic_comments = true
	vim.g.rasmus_transparent = false
	vim.g.rasmus_variant = "dark"
	vim.g.rasmus_italic_keywords = false
	vim.g.rasmus_italic_booleans = false
	vim.g.rasmus_italic_functions = false
	vim.g.rasmus_italic_variables = false
end
function nightvision_setup()
	-- all possible styles
	-- pure, gray, jade, lime, pear, drab, aqua, sage, and teal
	vim.g.nv_dark = "teal"
end
nightvision_setup()
mellow_setup()

-- SETUP END

function rose_pine_transparent()
	write_dat_file(dat_file, "rose-pine-main")
	require("rose-pine").setup({
		dim_inactive_windows = true,
		styles = {
			transparency = true,
		},
	})
	vim.cmd[[colorscheme rose-pine-main]]
end

function gruvbox_transparent() 
	write_dat_file(dat_file, "gruvbox")
	require("gruvbox").setup({
		contrast = "hard",
		dim_inactive = false,
		inverse = false,
		transparent_mode = true,
	})
	vim.cmd[[colorscheme gruvbox]]
end

function gruvbox_contrast(contrast)
	write_dat_file(dat_file, "gruvbox")
	require("gruvbox").setup({
		contrast = contrast,
	})
	vim.cmd[[colorscheme gruvbox]]
end

function quiet_light()
	vim.background = "light"
	vim.cmd[[colorscheme quiet]]
end

function change_cs(cs)
	assert(cs, "Argument must not be nil")
    write_dat_file(dat_file, cs)
    vim.cmd("colorscheme " .. cs)
end

function get_cs()
	print("colorscheme " .. read_file(dat_file))
end

-- Setting the colorscheme
local colorscheme = read_file(dat_file)
vim.cmd("colorscheme " .. colorscheme)
