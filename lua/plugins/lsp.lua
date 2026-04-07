return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {},
        ocamllsp = {},
        ada_ls = {},
      },
    },
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^8",
    lazy = false,
  },
}
