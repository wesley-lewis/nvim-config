require("hop").setup()
vim.keymap.set("n", "gw", function()
	require("hop").hint_words()
end)
