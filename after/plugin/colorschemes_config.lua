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

require("gruvbox").setup({
	-- contrast = "hard",
	transparent_mode = false,
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
		Comment = { fg = "#2ea542" },
		Search = { fg = "#000000", bg = "Orange" },
		IncSearch = { fg = "#000000", bg = "Orange" },
	},
	inverse = false,
})

require("rose-pine").setup({
	dim_inactive_windows = false,
	styles = {
		transparency = false,
		italic = false,
	},
})

require("material").setup({
	contrast = {
		terminal = true,
	},
})

require("bamboo").setup({
	dim_inactive = true,
	term_colors = true,
	code_style = {
		comments = { italic = true },
		conditionals = { italic = false },
		namespaces = { italic = false },
		parameters = { italic = false },
	},
	highlights = {
		["@comment"] = { fg = "#928374" },
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
rasmus_setup()
-- mellow_setup()

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

function rasmus_monochrome()
	vim.g.rasmus_variant = "monochrome"
	write_dat_file(dat_file, "rasmus")
	vim.cmd[[colorscheme rasmus]]
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
