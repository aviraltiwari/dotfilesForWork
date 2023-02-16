vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
	vim.lsp.diagnostic.on_publish_diagnostics,
	{
		underline = true,
		virtual_text = {
			spacing = 5,
			severity_limit = 'Warning',
		},
		update_in_insert = true,
	}
)
require 'nvim-treesitter.configs'.setup {
	-- A list of parser names, or "all"
	ensure_installed = { "c", "lua", "rust" },

	sync_install = false,
	auto_install = true,

	highlight = {
		enable = true,
		disable = { "c", "rust" },
		additional_vim_regex_highlighting = false,
	},
	autotag = {
		enable = true,
	},
	autopairs = {
		enable = true,
	},
	incremental_selection = {
		enable = true,
	},
	indent = {
		enable = true
	},
	matchup = {
		enable = true
	},
	rainbow = {
		enable = true
	},

}
