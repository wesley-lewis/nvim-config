local lsp = require("lsp-zero")
local mason_lsp = require('mason-lspconfig')
require('lspconfig.ui.windows').default_options = { border = 'single' }

require('mason').setup()

mason_lsp.setup({
    -- Replace the language servers listed here 
    -- with the ones you want to install
    -- ensure_installed = {'eslint', 'gopls', 'zls', 'clangd'},
		ensure_installed = { "clangd" },
    handlers = {
      lsp.default_setup,
    },
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "<leader>gr", require("telescope.builtin").lsp_references, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>ws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-k>", function() vim.lsp.buf.signature_help() end, opts)
end)

vim.diagnostic.config({
	-- virtual_text = true,
	-- virtual_text = false,
	signs = {
		text = {
			-- [vim.diagnostic.severity.ERROR] = '❌',
			-- [vim.diagnostic.severity.WARN] = 'W',
			-- [vim.diagnostic.severity.INFO] = '💡',
			-- [vim.diagnostic.severity.HINT] = '💡',
		},
	},
	-- signs = false,
	update_in_insert = false,
	underline = false,
	severity_sort = true,
})

-- mason_lsp.rust_analyzer.setup {
-- 	autostart = false,
-- }

-- vim.fn.sign_define('DiagnosticSignError', { text = '>> ', numhl = 'ErrorMsg' })
-- vim.fn.sign_define('DiagnosticSignError', { text = '❌', numhl = 'ErrorMsg' })
-- vim.fn.sign_define('DiagnosticSignHint', { text = '💡', numhl = 'HintMsg' })
-- vim.fn.sign_define('DiagnosticSignHint', { text = 'H', numhl = 'HintMsg' })
-- vim.fn.sign_define('DiagnosticSignWarn', { text = 'W', numhl = 'WarningMsg' })



lsp.setup()

vim.lsp.config['ocamllsp'] = {
	cmd = { 'ocamllsp' },
	filetypes = { 'ocaml', 'ocaml.interface', 'ocaml.menhir', 'ocaml.ocamllex', 'dune', 'reason' },
	root_markers = { '*.opam', 'esy.json', 'package.json', '.git', 'dune-project', 'dune-workspace' },
}

vim.lsp.enable('ocamllsp')
