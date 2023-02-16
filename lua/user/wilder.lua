local wilder = require('wilder')
wilder.setup({ modes = { ':', '/', '?' } })


-- 		highlights = {
-- 			border = 'Normal', -- highlight to use for the border
-- 		},
-- 		-- 'single', 'double', 'rounded' or 'solid'
-- 		-- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
-- 		border = 'rounded',
-- 	})
-- ))
--
wilder.set_option('renderer', wilder.popupmenu_renderer({
	pumblend = 5,
	-- highlighter = wilder.basic_highlighter(),
	left = { ' ', wilder.popupmenu_devicons() },
	right = { ' ', wilder.popupmenu_scrollbar() },
	border = 'rounded'
}))
-- End of File
