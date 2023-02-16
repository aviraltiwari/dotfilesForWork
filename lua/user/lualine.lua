local navic = require("nvim-navic")
require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = require("user.lualinetheme").theme(),
		-- component_separators = { left = '', right = '' },
		-- section_separators = { left = '', right = '' },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
		section_separators = '',
		-- section_separators = { left = '', right = '' },
		component_separators = ''
		-- component_separators = { left = '', right = '' }
	},
	sections = {
		lualine_a = { 'mode' },
		lualine_b = { 'branch' },
		lualine_c = { 'filename' },
		-- lualine_c = {
		-- 	{ navic.get_location, cond = navic.is_available },
		-- },
		lualine_x = { 'encoding', 'fileformat', 'filetype' },
		lualine_y = { 'progress' },
		lualine_z = { 'location' }
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { 'filename' },
		lualine_x = { 'location' },
		lualine_y = {},
		lualine_z = {}
	},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
	-- tabline = {
	-- 	lualine_a = {},
	-- 	lualine_b = {},
	-- 	lualine_c = { require 'tabline'.tabline_buffers },
	-- 	lualine_x = { require 'tabline'.tabline_tabs },
	-- 	lualine_y = {},
	-- 	lualine_z = {},
	-- },
}
