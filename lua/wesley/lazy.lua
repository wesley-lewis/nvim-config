local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

-- Lazy
require("lazy").setup({
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		'nvim-treesitter/nvim-treesitter',
		build = ":TSUpdate",
	},
	'nvim-treesitter/playground',
	'theprimeagen/harpoon',

	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		dependencies = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',

			-- LSP Support
			'neovim/nvim-lspconfig',
			-- Autocompletion
			'hrsh7th/nvim-cmp',
			'hrsh7th/cmp-nvim-lsp',
			'L3MON4D3/LuaSnip',
		}
	},
	{
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	},
	{"akinsho/toggleterm.nvim"},
	-- Tabs
	{
		"akinsho/bufferline.nvim",
		dependencies = {
			'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
		},
		opts = {},
		version = '*', -- optional: only update when a new 1.x version is released
	},

	-- File explorer popup
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		}
	},
	{
		"folke/trouble.nvim",
	},
	{
		"nvim-lualine/lualine.nvim",
	},

	-- Colorschemes
	{
		"sainnhe/gruvbox-material",
		priority = 1000,
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
	},
	{
		"rose-pine/neovim",
		as = "rose-pine",
		priority = 1000,
	},
	{
		"olivercederborg/poimandres.nvim",
		priority = 1000,
	},
	{
		"loctvl842/monokai-pro.nvim",
		priority = 1000,
	},
	{
		"ab-dx/ares.nvim",
		priority = 1000,
		dependencies = {
			"rktjmp/lush.nvim",
		},
	},
})
