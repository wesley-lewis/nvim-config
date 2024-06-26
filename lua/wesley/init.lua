require("wesley.remap")
require("wesley.lazy")

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Custom terminal --
vim.keymap.set('n', "<C-\\>", function()
	local term_no = vim.fn.input("Enter terminal no: ")
	vim.cmd("ToggleTerm " .. term_no)
end)

vim.keymap.set('n', "<C-]>", function()
	-- creating a new separate terminal tab
	vim.cmd("tabnew")
	vim.cmd("terminal")
end)

vim.diagnostic.config({
	virtual_text = false,
	underline = false,
})

if vim.g.neovide then
	vim.g.neovide_hide_mouse_when_typing = true
	vim.g.neovide_cursor_animation_length = 0
	vim.g.neovide_cursor_trail_size = 0
	vim.g.neovide_scroll_animation_length = 0
	vim.g.neovide_transparency = 1
	vim.o.guifont = "FiraCode Nerd Font:h14"
end

-- vim.cmd[[ highlight IncSearch guibg=#61afef]]

-- Change highlight color on yank
-- vim.cmd[[
-- augroup YankHighlight
--     autocmd!
--     autocmd TextYankPost * silent! lua vim.highlight.on_yank({higroup='IncSearch', timeout=200})
-- augroup END
-- ]]

vim.cmd[[ augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=200 }
augroup END]]

vim.cmd[[
  autocmd VimEnter * Neotree filesystem reveal right
]]

-- My bgcolor: #1f2329 : Less dark
-- My bgcolor: #031517

vim.background = "dark"
-- vim.opt.guicursor = "i:block"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.swapfile = false
vim.opt.linespace = 1
vim.opt.numberwidth = 4

vim.o.hlsearch = true
vim.o.mouse = 'a'
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300
vim.o.completeopt = 'menuone,noselect'
vim.o.termguicolors = true
