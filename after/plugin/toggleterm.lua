local toggleterm = require("toggleterm")
toggleterm.setup({
	direction = "horizontal",
	size = 15,
	open_mapping = [[<M-j>]]
})

function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	-- vim.keymap.set('t', 'jj', [[<C-\><C-n>]])
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
