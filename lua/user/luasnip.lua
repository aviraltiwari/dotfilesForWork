local luasnip = require("luasnip")
local type = require("luasnip.util.types")
require("luasnip/loaders/from_vscode").lazy_load()


luasnip.filetype_extend("javascript", {"javascript", "javascriptreact", "html"})
luasnip.filetype_extend("html", {"html"})
luasnip.filetype_extend("css", {"css"})
luasnip.filetype_extend("python", {"python"})

luasnip.config.set_config({
	history             = true, -- If true, Snippets that were exited can still be jumped back into.
	update_events       = "TextChanged,TextChangedI", -- Update more often, :h events for more info.
	enable_autosnippets = true,

	ext_opts = {
		[type.choiceNode] = {
			active = {
				virt_text = { { "<-", "Error" } },
			}
		}
	}
})

vim.keymap.set({
	"i",
	"s"
}, "C-k"
	, function()
		if luasnip.expand_or_jumpable() then
			luasnip.expand_or_jump()
		end
	end, { silent = true })
