require "user.options"
require "user.plugins"
require "user.keymaps"

-- NvimTreeSitter
require'nvim-treesitter.configs'.setup({
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  }
})

-- GitSigns
require('gitsigns').setup()

-- Telescope
require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules"} } }

-- TokyoNight Color Scheme
vim.g.tokyonight_style = "night"
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
--vim.g.tokyonight_transparent = true
vim.g.tokyonight_lualine_bold = true
vim.cmd("colorscheme tokyonight")

-- Lightline
vim.cmd("let g:lightline = {'colorscheme': 'tokyonight'}")

-- Coc.nvim
vim.cmd('source /home/ish-u/.config/nvim/plug-config/coc.vim')

-- NvimTree
require("nvim-tree").setup()
