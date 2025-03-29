-- vim.keymap.set("n", "<leader>e", "<cmd>Neotree filesystem reveal right<CR>")
vim.keymap.set("n", "<leader>e", "<cmd>Neotree filesystem right<CR>")

require("neo-tree").setup({
	window = {
		-- position = "right",
		width = "30",
		hide_hidden = false,
	}
})
