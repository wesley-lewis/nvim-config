vim.g.mapleader = " "

vim.keymap.set("n", "<M-b>", ":Ex<CR>")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>v", ":vsplit<CR><C-w>l", { noremap = true})
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>", { noremap = true})
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>", { noremap = true})

