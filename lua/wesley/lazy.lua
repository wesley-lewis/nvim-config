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
	{"ThePrimeagen/harpoon"},
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
	{
		"lukas-reineke/indent-blankline.nvim",
		enable = false,
	},

	{
		"brenton-leighton/multiple-cursors.nvim",
		version = "*",  -- Use the latest tagged version
		opts = {},  -- This causes the plugin setup function to be called
		keys = {
			{"<C-j>", "<Cmd>MultipleCursorsAddDown<CR>", mode = {"n", "x"}, desc = "Add cursor and move down"},
			{"<C-k>", "<Cmd>MultipleCursorsAddUp<CR>", mode = {"n", "x"}, desc = "Add cursor and move up"},

			{"<C-Up>", "<Cmd>MultipleCursorsAddUp<CR>", mode = {"n", "i", "x"}, desc = "Add cursor and move up"},
			{"<C-Down>", "<Cmd>MultipleCursorsAddDown<CR>", mode = {"n", "i", "x"}, desc = "Add cursor and move down"},

			{"<C-LeftMouse>", "<Cmd>MultipleCursorsMouseAddDelete<CR>", mode = {"n", "i"}, desc = "Add or remove cursor"},

			{"<Leader>a", "<Cmd>MultipleCursorsAddMatches<CR>", mode = {"n", "x"}, desc = "Add cursors to cword"},
			{"<Leader>A", "<Cmd>MultipleCursorsAddMatchesV<CR>", mode = {"n", "x"}, desc = "Add cursors to cword in previous area"},

			{"<Leader>d", "<Cmd>MultipleCursorsAddJumpNextMatch<CR>", mode = {"n", "x"}, desc = "Add cursor and jump to next cword"},
			{"<Leader>D", "<Cmd>MultipleCursorsJumpNextMatch<CR>", mode = {"n", "x"}, desc = "Jump to next cword"},

			-- {"<Leader>l", "<Cmd>MultipleCursorsLock<CR>", mode = {"n", "x"}, desc = "Lock virtual cursors"},
		},
	},
	-- Colorschemes
	{
		"rose-pine/neovim",
		as = "rose-pine",
		priority = 1000,
		lazy = false,
	},
	{
		"tiagovla/tokyodark.nvim",
		priority = 1000,
		lazy = false,
	},
	{
		"mellow-theme/mellow.nvim",
		priority = 1000,
		lazy = false,
	},
	{
		"Mofiqul/vscode.nvim",
		priority = 1000,
		lazy = false,
	},
	{
		"slugbyte/lackluster.nvim",
		priority = 1000,
		lazy = false,
	},
	{
		"kdheepak/monochrome.nvim",
		priority = 1000,
		lazy = false,
	},
	{
		"kvrohit/substrata.nvim",
		priority = 1000,
		lazy = false,
	},
	{
		"fenetikm/falcon",
		priority = 1000,
		lazy = false,
	},
	{
		"blazkowolf/gruber-darker.nvim",
		priority = 1000,
		lazy = false,
	},
	{
		"olivercederborg/poimandres.nvim",
		priority = 1000,
		lazy = false,
	},
	{
		"kvrohit/rasmus.nvim",
		priority = 1000,
		lazy = false,
	},
})
