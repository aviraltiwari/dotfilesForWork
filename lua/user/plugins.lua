vim.cmd [[packadd packer.nvim]]

vim.cmd [[ 
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]]

function Plugins(use)
	use 'wbthomason/packer.nvim'
	use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons', }, tag = 'nightly' }
	use "rebelot/kanagawa.nvim"
	use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { { 'nvim-lua/plenary.nvim' } } }
	use {
	"catppuccin/nvim",
	as = "catppuccin",
	config = function()
		vim.g.catppuccin_flavour = "latte" -- latte, frappe, macchiato, mocha
		require("catppuccin").setup()
	end
}
	-- use { "catppuccin/nvim", as = "catppuccin" }
	use 'echasnovski/mini.nvim'
	use 'sbdchd/neoformat'
	use { "folke/which-key.nvim", config = function() require("which-key").setup {} end }
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use { "williamboman/nvim-lsp-installer", "neovim/nvim-lspconfig", }
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-cmdline'
	use 'L3MON4D3/LuaSnip'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
	-- use { 'shaunsingh/oxocarbon.nvim', run = './install.sh' }
	use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }
	use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }
	use 'jose-elias-alvarez/null-ls.nvim'
	use 'sunjon/shade.nvim'
	use 'RRethy/vim-illuminate'
	use { "williamboman/mason.nvim" }
	use 'williamboman/mason-lspconfig.nvim'
	use 'mg979/vim-visual-multi'
	use 'norcalli/nvim-colorizer.lua'
	use 'windwp/nvim-autopairs'
	use { 'alvarosevilla95/luatab.nvim', requires = 'kyazdani42/nvim-web-devicons' }
	use 'akinsho/toggleterm.nvim'
	use 'windwp/nvim-ts-autotag'
	use 'glepnir/lspsaga.nvim'
	use 'mattn/emmet-vim'
	use { 'kdheepak/tabline.nvim',
		requires = { { 'hoob3rt/lualine.nvim', opt = true }, { 'kyazdani42/nvim-web-devicons', opt = true } } }
	use { "SmiteshP/nvim-navic", requires = "neovim/nvim-lspconfig" }
	use { 'saadparwaiz1/cmp_luasnip' }
	use "rafamadriz/friendly-snippets"
	use { 'B4mbus/oxocarbon-lua.nvim' }
	use 'lukas-reineke/indent-blankline.nvim'
	use 'marko-cerovac/material.nvim'
	use 'wadackel/vim-dogrun'
	use 'xiyaowong/nvim-transparent'
	use 'Mofiqul/dracula.nvim'
	use 'karb94/neoscroll.nvim'
	-- use 'matsuuu/pinkmare'
	-- use {'shaunsingh/oxocarbon.nvim', run = './install.sh'}
	use 'michaeldyrynda/carbon.vim'
	-- use { "catppuccin/nvim", as = "catppuccin" }
	use({
		'glepnir/zephyr-nvim',
		requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
	})
	use 'navarasu/onedark.nvim'
	-- use {
	-- 	'goolord/alpha-nvim',
	-- 	requires = { 'kyazdani42/nvim-web-devicons' },
	-- 	config = function()
	-- 		require 'alpha'.setup(require 'alpha.themes.startify'.config)
	-- 	end
	-- }
	use 'gelguy/wilder.nvim'
	use "nvim-lua/plenary.nvim"
	use({ "milkias17/reloader.nvim", requires = { { "nvim-lua/plenary.nvim" } } })
end

local configurations = {
	display = {
		open_fn = function()
			return require('packer.util').float({ border = 'single' })
		end
	}
}

return require('packer').startup({ function(use) return Plugins(use) end, config = configurations })
