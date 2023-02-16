require("catppuccin").setup({
	transparent_background = true,
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 19,
	},
	styles = {
		comments = {},
		conditionals = {},
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		telescope = true,
		treesitter = true,
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
	color_overrides = {},
	custom_highlights = {},
})


vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()]]
