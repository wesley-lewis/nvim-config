require("wesley.remap")
require("wesley.lazy")


if vim.g.neovide then
	vim.g.neovide_cursor_animation_length = 0
end

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Custom toggleterm terminal --
vim.keymap.set('n', "<C-\\>", function()
	local term_no = vim.fn.input("Enter terminal no: ")
	vim.cmd("ToggleTerm " .. term_no)
end)
---------------------------------------

-------------- Creating a new terminal tab ------------------
vim.keymap.set('n', "<C-]>", function()
	-- creating a new separate terminal tab
	vim.cmd("tabnew")
	vim.cmd("terminal")
end)
---------------------------------------

vim.diagnostic.config({
	virtual_text = false,
	underline = false,
})

vim.cmd[[ hi MatchParen ctermbg=None ctermfg=yellow]]

vim.cmd[[ augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=200 }
augroup END]]

vim.background = "dark"
vim.opt.guicursor = "i:block"
-- vim.opt.guicursor = "i:ver1"
vim.opt.tabstop = 4
vim.opt.cursorline = true
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.swapfile = false
vim.opt.linespace = 2
vim.opt.clipboard = "unnamed,unnamedplus"

vim.o.termguicolors = true
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
