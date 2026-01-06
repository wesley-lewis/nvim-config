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
      -- or
      -- "nvim-telescope/telescope.nvim",
      -- or
      -- "danhat1020/native-find.nvim"
    },
    config = function()
      require("colorscheme-picker").setup()
    end,
  },
}
