-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Move to Start/End of line
map("n", "gs", "^")
map("n", "gl", "$")
map("v", "gs", "^")
map("v", "gl", "$")

-- Move to end of file
map("n", "ge", "G")
map("v", "ge", "G")

map("n", "<A-,>", "<Cmd>BufferLineCyclePrev<CR>", opts)
map("n", "<A-.>", "<Cmd>BufferLineCycleNext<CR>", opts)
map("n", "<A-c>", "<Cmd>bdelete<CR>", opts)

-- hop plugin setup
require("hop").setup()
map("n", "gw", function()
  require("hop").hint_words()
end)

require("toggleterm").setup({
  direction = "float",
  size = 20,
  open_mapping = [[<M-j>]],
})

-- function _G.set_terminal_keymaps()
--   map("t", "jk", [[<C-\><C-n>]])
-- end
-- vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps")
