require("wesley.remap")
require("wesley.lazy")


-- ToggleTerm keybindings --
vim.keymap.set('n', '<M-1>j', ':ToggleTerm 1<CR>')
vim.keymap.set('n', '<M-2>j', ':ToggleTerm 2<CR>')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Tabs in neovim
vim.keymap.set('n', "<C-\\>", "<cmd>tabnew | terminal<CR>")
vim.keymap.set("n", "<leader>tl", "<cmd>tabnext<CR>")
vim.keymap.set("n", "<leader>th", "<cmd>tabprevious<CR>")
vim.keymap.set("n", "<C-]>", "<cmd>tabnew | Ex<CR>")



-- vim.cmd[[ highlight IncSearch guibg=#61afef]]
-- Change highlight color on yank
-- vim.cmd[[
-- augroup YankHighlight
--     autocmd!
--     autocmd TextYankPost * silent! lua vim.highlight.on_yank({higroup='IncSearch', timeout=200})
-- augroup END
-- ]]

-- My bgcolor: #1f2329 : Less dark
-- My bgcolor: #031517

vim.background = "dark"
vim.opt.guicursor = "i:block"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.swapfile = false

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
