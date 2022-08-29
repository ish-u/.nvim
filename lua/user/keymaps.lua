local opts ={ noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.mapLocalleader = " "

keymap("n", "<leader>t", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>m", ":NvimTreeFocus<CR>", opts)
keymap("n", "<leader>z", ":NvimTreeClose<CR>", opts)
keymap("n","<leader>ff" ,":Telescope find_files<cr>",opts)
keymap("n","<leader>fb" ,":Telescope buffers<cr>",opts)
keymap("n","<leader>fg" ,":Telescope live_grep<cr>",opts)


