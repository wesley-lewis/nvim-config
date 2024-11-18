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

-- require("gruvbox").setup({
-- 	terminal_colors = true,
-- 	contrast = "hard",
-- 	bold = false,
-- 	italic = {
-- 		strings = false, comments = false,
-- 	},
-- 	-- overrides = {
--             -- ["Comment"] = { fg = "#2ea542" },
-- 	-- },
-- 	palette_overrides = {
-- 		-- dark0_hard = "#101010",
-- 		light0_hard = "#000000",
-- 	},
-- 	dim_inactive = true,
-- })

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

require("poimandres").setup({
	dim_nc_background = true,
	disable_background = false,
})

-- Rasmus Config
vim.g.rasmus_bold_keywords = true

-- SETUP END

-- function gruvbox_transparent() 
-- 	require("gruvbox").setup({
-- 		transparent_mode = true,
-- 		dim_inactive = true,
-- 		terminal_colors = true,
-- 		contrast = "hard",
-- 		bold = false,
-- 		italic = {
-- 			strings = false, comments = false,
-- 		},
-- 	})
-- 	write_dat_file(dat_file, "gruvbox")
-- 	vim.cmd("colorscheme gruvbox")
-- end

-- function gruvbox_opaque()
-- 	require("gruvbox").setup({
-- 		terminal_colors = true,
-- 		contrast = "hard",
-- 		bold = false,
-- 		italic = {
-- 			strings = false, comments = false,
-- 		},
-- 		-- overrides = {
-- 				-- ["Comment"] = { fg = "#2ea542" },
-- 		-- },
-- 		dim_inactive = true,
-- 		transparent_mode = false,
-- 	})
-- 	write_dat_file(dat_file, "gruvbox")
-- 	vim.cmd("colorscheme gruvbox")
-- end

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

function poimandres_opaque()
	write_dat_file(dat_file, "poimandres")
	require("poimandres").setup({
		disable_background = false,
	})
	vim.cmd("colorscheme poimandres")
end

function poimandres_transparent()
	write_dat_file(dat_file, "poimandres")
	require("poimandres").setup({
		disable_background = true,
	})
	vim.cmd("colorscheme poimandres")
end

function lackluster()
	write_dat_file(dat_file, "lackluster-hack")
	vim.cmd("colorscheme lackluster-hack")
end

function rasmus_opaque()
	vim.g.rasmus_transparent = false
	write_dat_file(dat_file, "rasmus")
	vim.cmd("colorscheme rasmus")
end

function rasmus_transparent()
	vim.g.rasmus_transparent = true
	write_dat_file(dat_file, "rasmus")
	vim.cmd("colorscheme rasmus")
end

-- Setting the colorscheme
local colorscheme = read_file(dat_file)
-- print(colorscheme)
vim.cmd("colorscheme " .. colorscheme)
