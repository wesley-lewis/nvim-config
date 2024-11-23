local dat_file = "/home/wesley/.config/nvim/after/plugin/.dat"

local function read_file(filepath)
	local file = io.open(filepath, "r")
	if not file then return "tokyodark" end
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

require("rose-pine").setup({
	dim_inactive_windows = true,
	styles = {
		-- transparency = true,
		italic = false,
	}
})

require("tokyodark").setup({
	transparent_background = false,
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
	transparent = false,
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

local function adwaita_setup()
	vim.g.adwaita_darker = false
	vim.g.adwaita_disable_cursorline = true
	vim.g.adwaita_transparent = false 
end
local function gruvbox_setup()
	vim.g.gruvbox_material_background = "hard"
	vim.g.gruvbox_material_foreground = "original"
end
gruvbox_setup()
adwaita_setup()

-- SETUP END

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
		gamma = 1.0,
	})
	write_dat_file(dat_file, "tokyodark")
	vim.cmd("colorscheme tokyodark")
end

function tokyodark_transparent()
	require("tokyodark").setup({
		transparent_background = true,
		gamma = 0,
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

function lackluster()
	write_dat_file(dat_file, "lackluster-hack")
	vim.cmd("colorscheme lackluster-hack")
end

function onedark_transparent()
	write_dat_file(dat_file, "onedark_dark")
	vim.cmd("colorscheme onedark_dark")
end

function onedark_opaque()
	write_dat_file(dat_file, "onedark_vivid")
	vim.cmd("colorscheme onedark_vivid")
end

function adwaita_transparent()
	vim.g.adwaita_transparent = true
	write_dat_file(dat_file, "adwaita")
	vim.cmd("colorscheme adwaita")
end

function adwaita_opaque()
	vim.g.adwaita_transparent = false
	write_dat_file(dat_file, "adwaita")
	vim.cmd("colorscheme adwaita")
end

function rasmus_monochrome()
	vim.g.rasmus_variant = "monochrome"
	write_dat_file(dat_file, "rasmus")
	vim.cmd[[colorscheme rasmus]]
end

function gruverboxer_material()
	write_dat_file(dat_file, "gruverboxer-material")
	vim.cmd("colorscheme gruverboxer-material")
end

function gruvbox()
	vim.g.gruvbox_material_background = "hard"
	vim.g.gruvbox_material_foreground = "original"
	write_dat_file(dat_file, "gruvbox-material")
	vim.cmd("colorscheme gruvbox-material")
end

function gruvbox_material()
	vim.g.gruvbox_material_background = "hard"
	vim.g.gruvbox_material_foreground = "default"
	write_dat_file(dat_file, "gruvbox-material")
	vim.cmd("colorscheme gruvbox-material")
end

function kanagawa_dragon()
	write_dat_file(dat_file, "kanagawa-dragon")
	vim.cmd[[colorscheme kanagawa-dragon]]
end

-- Setting the colorscheme
local colorscheme = read_file(dat_file)
-- print(colorscheme)
vim.cmd("colorscheme " .. colorscheme)
