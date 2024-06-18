local lsp = require("lsp-zero")
local mason_lsp = require('mason-lspconfig')

require('mason').setup()

mason_lsp.setup({
    -- Replace the language servers listed here 
    -- with the ones you want to install
    ensure_installed = {'tsserver', 'eslint', 'gopls','rust_analyzer'},
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

-- vim.fn.sign_define('DiagnosticSignError', { text = '❌', numhl = 'ErrorMsg' })
-- vim.fn.sign_define('DiagnosticSignHint', { text = '💡', numhl = 'HintMsg' })
-- vim.fn.sign_define('DiagnosticSignWarn', { text = '⚠️', numhl = 'WarningMsg' })

lsp.setup()
