require "user.options"
require "user.plugins"
require "user.keymaps"
require("nvim-tree").setup()
-- require("telescope.builtin").find_files()
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  }
}

vim.g.tokyonight_style = "night"
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

vim.cmd('source /home/ish-u/.config/nvim/plug-config/coc.vim')
vim.cmd "colorscheme tokyonight"
vim.cmd("let g:lightline = {'colorscheme': 'tokyonight'}")
