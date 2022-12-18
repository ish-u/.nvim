require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
}

-- See `:help telescope.builtin`
-- Remaps
local keymap = vim.keymap.set
local builtin = require('telescope.builtin')
keymap('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })
keymap('n', '<leader><space>', builtin.buffers, { desc = '[ ] Find existing buffers' })
keymap('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })

keymap('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
keymap('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind [H]elp' })
keymap('n', '<leader>fd', builtin.diagnostics, { desc = '[F]ind [D]iagnostics' })
