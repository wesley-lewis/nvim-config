require("wesley.remap")
require("wesley.lazy")

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- ToggleTerm keybindings --
vim.keymap.set('n', "<C-\\>", function()
	local term_no = vim.fn.input("Enter terminal no: ")
	vim.cmd("ToggleTerm " .. term_no)
end)

vim.diagnostic.config({
	virtual_text = false,
	underline = false,
})

if vim.g.neovide then
	vim.g.neovide_hide_mouse_when_typing = true
	vim.g.neovide_cursor_animation_length = 0.05
	vim.g.neovide_cursor_trail_size = 0
	vim.g.neovide_transparency = 1
	vim.o.guifont = "FiraCode Nerd Font:h11"
end

-- vim.cmd[[ highlight IncSearch guibg=#61afef]]
-- Change highlight color on yank
vim.cmd[[
augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank({higroup='IncSearch', timeout=200})
augroup END
]]

vim.cmd[[
augroup custom_papercolorslim_transparent_background
  autocmd!
  autocmd ColorScheme PaperColorSlim highlight Normal guibg=NONE
augroup end
]]

-- My bgcolor: #1f2329 : Less dark
-- My bgcolor: #031517

vim.background = "dark"
vim.opt.guicursor = "i:block"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.swapfile = false
vim.opt.linespace = 1

-- vim.o.guifont = "JetBrainsMonoNL Nerd Font"
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
