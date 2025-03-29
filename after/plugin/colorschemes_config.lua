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

require("kanagawa").setup({
	keywordStyle = { italic = false },
	dimInactive = false,
})

require("gruvbox").setup({
	contrast = "hard",
	transparent_mode = false,
	dim_inactive = false,
	italic = {
		strings = false,
		emphasis = true,
		comments = false,
		operators = false,
		folds = true,
	},
	palette_overrides = {
		gray = "#2ea542",
	},
	inverse = false,
})

require("rose-pine").setup({
	dim_inactive_windows = false,
	styles = {
		transparency = true,
		italic = false,
	},
})

require("tokyodark").setup({
	transparent_background = true,
	styles = {
		comments = { italic = true },
		keywords = { italic = false },
		identifiers = { italic = false },
		functions = {},
		variables = {},
	},
	terminal_colors = true,
})

require("vscode").setup({
	transparent = true,
})

require("gruber-darker").setup({
	italic = {
		strings = false,
		operators = false,
	}
})

require("onedarkpro").setup({
	colors = {
		bg = "#1f2329",
	},
	options = {
		highlight_inactive_windows = true,
		cursorline = true,
	}
})


local function morhetz_gruvbox()
	vim.g.gruvbox_contrast_dark = "hard"
	vim.g.gruvbox_invert_selection = 0
end
local function mellow_setup()
	vim.g.mellow_italic_keywords  = false
	vim.g.melloc_italic_booleans  = false
	vim.g.mellow_italic_functions = false
	vim.g.mellow_italic_variables = false
end
local function oldworld_setup()
	require("oldworld").setup({
		variant = "default",
	})
end
local function nord_setup()
	vim.g.nord_italic = false
	vim.g.nord_contrast = true
end
local function zenbones_setup()
	vim.g.lighten_noncurrent_window = true
end
zenbones_setup()
nord_setup()
oldworld_setup()
mellow_setup()
-- morhetz_gruvbox()

-- SETUP END

function tokyodark_opaque()
	require("tokyodark").setup({
		transparent_background = false,
		-- gamma = 1.0,
	})
	write_dat_file(dat_file, "tokyodark")
	vim.cmd("colorscheme tokyodark")
end

function tokyodark_transparent()
	require("tokyodark").setup({
		transparent_background = true,
		-- gamma = 0,
	})
	write_dat_file(dat_file, "tokyodark")
	vim.cmd("colorscheme tokyodark")
end

function mellow_transparent()
	vim.g.mellow_transparent = true
	write_dat_file(dat_file, "mellow")
	vim.cmd("colorscheme mellow")
end

function mellow_opaque()
	vim.g.mellow_transparent = false
	write_dat_file(dat_file, "mellow")
	vim.cmd("colorscheme mellow")
end

function vscode_opaque()
	require("vscode").setup({
		transparent = false,
	})
	write_dat_file(dat_file, "vscode")
	vim.cmd("colorscheme vscode")
end

function vscode_transparent()
	require("vscode").setup({
		transparent = false,
	})
	write_dat_file(dat_file, "vscode")
	vim.cmd("colorscheme vscode")
end

function gruber_darker()
	write_dat_file(dat_file, "gruber-darker")
	vim.cmd("colorscheme gruber-darker")
end

function falcon()
	write_dat_file(dat_file, "falcon")
	vim.cmd("colorscheme falcon")
end

function onedark_transparent()
	require("onedarkpro").setup({
		options = {
			transparency = true,
		},
	})
	write_dat_file(dat_file, "onedark_dark")
	vim.cmd("colorscheme onedark_dark")
end

function onelight()
	vim.background = "light"
	write_dat_file(dat_file, "onelight")
	vim.cmd[[colorscheme onelight]]
end

function onedark_opaque()
	require("onedarkpro").setup({
		options = {
			transparency = true,
		},
	})
	write_dat_file(dat_file, "onedark")
	vim.cmd("colorscheme onedark")
end

function kanagawa_dragon()
	write_dat_file(dat_file, "kanagawa-dragon")
	vim.cmd[[colorscheme kanagawa-dragon]]
end

function e_ink()
	write_dat_file(dat_file, "e-ink")
	vim.o.background = "light"
	vim.cmd[[colorscheme e-ink]]
end

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

function vscode_transparent()
	write_dat_file(dat_file, "vscode")
	require("vscode").setup({
		transparent = true,
	})
	vim.cmd[[colorscheme vscode]]
end

function change_cs(cs)
    write_dat_file(dat_file, cs)
    vim.cmd("colorscheme " .. cs)
end

function get_cs()
	print("colorscheme " .. read_file(dat_file))
end

function tokyobones_transparent()
	vim.g.tokyobones_transparent_background = true
	write_dat_file(dat_file, "tokyobones")
	vim.cmd("colorscheme tokyobones")
end

function oldworld_transparent()
	require("oldworld").setup({
		variant = "oled",
	})
end

-- Setting the colorscheme
local colorscheme = read_file(dat_file)
vim.cmd("colorscheme " .. colorscheme)
