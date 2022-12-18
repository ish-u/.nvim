-- Shorten function name
local keymap = vim.keymap.set

-- Remap Options
local opts = { noremap = true, silent = true }

-- Making Leader Nop
keymap({ 'n', 'v' }, '<Space>', '<Nop>', opts)

-- Ex - Open netrw
keymap("n", "<leader>pv", ":Ex<CR>", opts)

-- Move while Highlighted
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)

-- Prettier
keymap("n", "<leader>F", ":!prettier --write %<CR>", opts)

-- Format
keymap("n", "<leader>f", ":LspZeroFormat<CR>", opts)
