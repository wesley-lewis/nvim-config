require("wesley.remap")

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
-- ToggleTerm keybindings --
vim.keymap.set('n', '<M-1>j', ':ToggleTerm 1<CR>')
vim.keymap.set('n', '<M-2>j', ':ToggleTerm 2<CR>')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Tabs in neovim
vim.keymap.set('n', "<C-\\>", "<cmd>tabnew | terminal<CR>")
vim.keymap.set("n", "<leader>tl", "<cmd>tabnext<CR>")
vim.keymap.set("n", "<leader>th", "<cmd>tabprevious<CR>")
vim.keymap.set("n", "<C-]>", "<cmd>tabnew | Ex<CR>")

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

	{
		"ellisonleao/gruvbox.nvim",
		config = function()
			vim.cmd("colorscheme gruvbox")
		end,
	}
	-- {
	-- 	"rebelot/kanagawa.nvim",
	-- 	config = function()
	-- 		vim.cmd("colorscheme kanagawa")
	-- 	end,
	-- },
	
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	config = function()
	-- 		vim.cmd("colorscheme tokyonight-night")
	-- 	end,
	-- }
})

-- vim.cmd[[ highlight IncSearch guibg=#61afef]]
-- Change highlight color on yank
-- vim.cmd[[
-- augroup YankHighlight
--     autocmd!
--     autocmd TextYankPost * silent! lua vim.highlight.on_yank({higroup='IncSearch', timeout=200})
-- augroup END
-- ]]

-- My bgcolor: #1f2329 : Less dark
-- My bgcolor: #031517

vim.background = "dark"
vim.opt.guicursor = "i:block"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.swapfile = false

vim.o.hlsearch = true
vim.o.mouse = 'a'
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300
vim.o.completeopt = 'menuone,noselect'
vim.o.termguicolors = true
