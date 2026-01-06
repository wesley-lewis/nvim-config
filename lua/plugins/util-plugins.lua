return {
  {
    "smoka7/hop.nvim",
    version = "*",
    opts = {
      keys = "etovxqpdygfblzhckisuran",
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-mini/mini.nvim",
    },
    opts = {},
  },
  {
    "danhat1020/colorscheme-picker.nvim",
    dependencies = {
      "ibhagwan/fzf-lua",
    },
    config = function()
      require("colorscheme-picker").setup()
    end,
  },
}
