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
	{
		"xiyaowong/transparent.nvim",
	},

	-- Colorschemes
	--
	-- {
	-- 	-- "navarasu/onedark.nvim",
	-- 	"olimorris/onedarkpro.nvim",
	-- 	config = function()
	-- 		require("onedarkpro").setup({
	-- 			colors = {
	-- 				onedark_vivid = { bg = "#1f2329" },
	-- 			}
	-- 		})
	-- 		vim.cmd [[ colorscheme onedark_vivid ]]
	-- 	end,
	-- }

	-- {
	-- 	"gbprod/nord.nvim",
	-- 	config = function()
	-- 		vim.cmd("colorscheme nord")
	-- 	end,
	-- }

	-- {
	-- 	"rose-pine/neovim",
	-- 	config = function()
	-- 		vim.cmd("colorscheme rose-pine")
	-- 	end,
	-- }

	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	config = function()
	-- 		vim.cmd("colorscheme catppuccin")
	-- 	end,
	-- }

	-- {
	-- 	"ellisonleao/gruvbox.nvim",
	-- 	config = function()
	-- 		vim.cmd("colorscheme gruvbox")
	-- 	end,
	-- }
	{
		"rebelot/kanagawa.nvim",
		config = function()
			vim.cmd("colorscheme kanagawa-dragon")
		end,
	},
	
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	config = function()
	-- 		vim.cmd("colorscheme tokyonight-night")
	-- 	end,
	-- }
})
