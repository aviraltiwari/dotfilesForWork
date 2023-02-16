local util = require 'lspconfig/util'
local capabilities = vim.lsp.protocol.make_client_capabilities()
local navic = require("nvim-navic")

require 'lspconfig'.tsserver.setup {
	filetypes = {
		'javascript',
		'javascriptreact',
		'javascript.jsx',
		'typescript',
		'typescriptreact',
		'typescript.tsx',
		'markdown',
	},
	root_directory = {
		util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git", "*.js")
	},
	on_attach = function(client, bufnr)
		navic.attach(client, bufnr)
	end
}

require 'lspconfig'.sumneko_lua.setup {
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = 'LuaJIT',
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { 'vim' },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
		filetypes = {
			"lua"
		}
	},
	on_attach = function(client, bufnr)
		navic.attach(client, bufnr)
	end
}

require 'lspconfig'.html.setup {}
require 'lspconfig'.cssls.setup {
	capabilities = capabilities,
}
