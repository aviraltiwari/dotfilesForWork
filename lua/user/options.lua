local options = {
	backup = false,
	clipboard = "unnamedplus",
	mouse = "a",
	number = true,
	relativenumber = true,
	smartcase = true,
	smartindent = true,
	swapfile = false,
	undofile = true,
	writebackup = false,
	tabstop = 4,
	shiftwidth = 4,
	termguicolors = true,
	ignorecase = true,
	signcolumn = 'yes:2',
	scrolloff = 8,
	splitright = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end


