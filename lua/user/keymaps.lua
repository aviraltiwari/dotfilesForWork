local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Telescope KeyBindings
keymap("n", "<leader>fo", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>fa", ":Telescope live_grep<cr>", opts)
keymap("n", "<leader>ff", ":Telescope oldfiles<cr>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<cr>", opts)

-- Nvim-Tree KeyBindings
keymap("n", "<leader>nt", ":NvimTreeOpen<cr>", opts)
keymap("n", "<leader>nn", ":NvimTreeToggle<cr>", opts)

-- Code Movement KeyBindings
keymap("n", "<A-Up>", ":m .-2<CR>==", opts)
keymap("n", "<A-Down>", ":m .+1<CR>==", opts)
keymap("n", "<C-A-Down>", ":t.<CR>", opts)
keymap("n", "<C-A-Up>", ":t.-1<CR>", opts)

-- Vim Alternative Save and Quit
keymap("n", "<C-s>", ":lua vim.lsp.buf.formatting()<CR>:w<CR>", opts)
keymap("n", "<leader>mm", ":qa!<CR>", opts)
keymap("n", "<leader>ma", ":wqa<CR>", opts)

-- TabLine KeyBindings
keymap("n", "<leader>t<Right>", ":TablineBufferNext<CR>", opts)
keymap("n", "<leader>t<Left>", ":TablineBufferPrev<CR>", opts)
keymap("n", "<leader>tx", ":bd!<CR>", opts)

keymap("n", "<leader>v<Right>", ":vsplit<CR>", opts)
keymap("n", "<leader>v<Down>", ":split<CR>", opts)

keymap("n", "<leader>tt", ":Telescope<CR>", opts)
keymap("n", "<leader>th", ":Telescope highlights<CR>", opts)

vim.cmd [[autocmd BufWritePost keymaps.lua source <afile> ]]
