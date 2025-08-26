require("wesley.remap")
require("wesley.lazy")

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

if vim.g.neovide then
	-- vim.o.guifont = "Consolas"
	-- vim.o.guifont = "FiraCode Nerd Font"
	vim.opt.linespace = 4
	vim.opt.guicursor = "i:block"
	vim.g.neovide_scroll_animation_length = 0.3
	vim.g.neovide_hide_mouse_when_typing = false
	vim.g.neovide_refresh_rate = 60
	vim.g.neovide_fullscreen = true
	vim.g.neovide_cursor_animation_length = 0.150
	vim.g.neovide_cursor_trail_size = 0.5
	vim.g.neovide_cursor_smooth_blink = true
	vim.g.neovide_cursor_unfocused_outline_width = 0.3
	vim.g.neovide_cursor_animate_in_insert_mode = false
end

-- Custom toggleterm terminal --
vim.keymap.set('n', "<C-\\>", function()
	local term_no = vim.fn.input("Enter terminal no: ")
	vim.cmd("ToggleTerm " .. term_no)
end)
---------------------------------------

-------------- Creating a new terminal tab ------------------
vim.keymap.set('n', "<C-]>", function()
	vim.cmd("tabnew")
	vim.cmd("terminal")
end)
---------------------------------------

-- vim.diagnostic.config({
-- 	virtual_text = false,
-- 	underline = false,
-- })

vim.cmd[[ augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=200 }
augroup END]]

vim.cmd([[
  highlight Cursor cterm=NONE ctermbg=DarkGray guibg=#3c3c3c
]])

-- vim.api.nvim_create_autocmd("FileType", {
-- 	pattern = "rust",
-- 	callback = function()
-- 		vim.opt_local.shiftwidth = 2
-- 		vim.opt_local.tabstop = 2
-- 		vim.opt_local.softabstop = 2
-- 	end,
-- })

vim.opt.cursorline = false
vim.background = "dark"
-- vim.opt.guicursor = "i:blinkon300,i:block"
-- vim.opt.guicursor = "i:blinkon100"
vim.opt.guicursor = "i:blinkon200,i:ver1"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.number = true
-- vim.opt.relativenumber = true
vim.opt.swapfile = false
vim.opt.linespace = 4
vim.opt.clipboard = "unnamed,unnamedplus"
vim.opt.autoindent = true
vim.opt.breakindent = true
-- vim.opt.cursorline = true

vim.o.termguicolors = true
vim.o.hlsearch = true
vim.o.mouse = 'a'
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300
vim.o.completeopt = 'menuone,noselect'
