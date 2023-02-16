local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting

local sources = {
	formatting.deno_fmt,
	formatting.autopep8,
	formatting.stylua,
}

null_ls.setup({
	sources = sources
})
