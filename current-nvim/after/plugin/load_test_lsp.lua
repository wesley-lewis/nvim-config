-- local client = vim.lsp.start_client {
-- 	name = "educationalsp",
-- 	cmd = {"/home/wesleylewis/Desktop/go_projects/lsp/main"},
-- }
--
-- if not client then
-- 	vim.notify "build not made proper"
-- 	return
-- end
--
-- vim.api.nvim_create_autocmd("FileType", {
-- 	pattern = "markdown",
-- 	callback = function()
-- 		vim.lsp.buf_attach_client(0, client)
-- 	end,
-- })
