local include = {
	"options",
	"wilder",
	"plugins",
	"lspconfig",
	"nvim-lsp-installer",
	"mason",
	"cmp",
	"keymaps",
	"lualine",
	-- "shade",
	"nvim-tree",
	"telescope",
	"mini",
	"whichkey",
	"treesitter",
	"vim-illuminate",
	"colorizer",
	"toggleterm",
	"autopairs",
	"lspsaga",
	-- "tabline",
	"navic",
	"luasnip",
	-- "luatab",
	"indent-blankline",
	"dracula",
	"onedark",
	"neoscroll",
	"catppuccin"
}

for _, plugins in ipairs(include) do
	require("user" .. "." .. plugins)
end


vim.opt.shortmess:append "c"
vim.wo.fillchars = 'eob: '
-- vim.cmd [[colorscheme dracula]]
-- vim.cmd [[colorscheme zephyr]]
-- vim.cmd [[colorscheme onedark]]
vim.cmd [[colorscheme catppuccin]]
vim.cmd [[set laststatus=3]]
vim.g.markdown_fenced_languages = {
	"ts=typescript"
}

vim.cmd [[
hi Normal guibg=none ctermbg=none
hi LineNr guibg=none ctermbg=none
hi Folded guibg=none ctermbg=none
hi NonText guibg=none ctermbg=none
hi SpecialKey guibg=none ctermbg=none
hi VertSplit guibg=none ctermbg=none
hi SignColumn guibg=none ctermbg=none
hi EndOfBuffer guibg=none ctermbg=none
]]

vim.cmd [[autocmd ColorScheme * highlight WhichKeyFloat ctermbg=NONE ctermfg=NONE]]
vim.cmd [[hi WhichKeyFloat ctermbg=BLACK ctermfg=BLACK]]

-- vim.opt.fillchars = {
-- 	horiz     = '━',
-- 	horizup   = '┻',
-- 	horizdown = '┳',
-- 	vert      = '┃',
-- 	vertleft  = '┫',
-- 	vertright = '┣',
-- 	verthoriz = '╋',
-- }
