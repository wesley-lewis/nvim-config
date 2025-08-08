vim.g.mapleader = " "

vim.keymap.set("n", "<M-b>", ":Ex<CR>")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>vs", ":vsplit<CR><C-w>l", { noremap = true})
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>", { noremap = true})
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>", { noremap = true})
vim.keymap.set("n", "<C-i>", ":IBLToggle<CR>", { noremap = true})

-- Move to Start/End of line
vim.keymap.set("n", "gs", "^")
vim.keymap.set("n", "gl", "$")
vim.keymap.set("v", "gs", "^")
vim.keymap.set("v", "gl", "$")

-- Move to end of file
vim.keymap.set("n", "ge", "G")
vim.keymap.set("v", "ge", "G")

-- Save file
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("i", "<C-s>", ":w<CR>")
