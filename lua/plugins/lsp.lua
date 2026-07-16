return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {},
        ocamllsp = {},
        ada_ls = {},
        zls = {},
      },
    },
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^8",
    lazy = false,
  },
}
