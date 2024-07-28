local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<A-,>', '<Cmd>BufferLineCyclePrev<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferLineCycleNext<CR>', opts)
map('n', '<A-c>', '<Cmd>bdelete<CR>', opts)
