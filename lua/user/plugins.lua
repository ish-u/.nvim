local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

    Plug 'itchyny/lightline.vim'
    Plug('neoclide/coc.nvim', {branch='release'})
    Plug('folke/tokyonight.nvim', { branch= 'main' })
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']})
    Plug 'nvim-lua/plenary.nvim'
    Plug('nvim-telescope/telescope.nvim', { tag='0.1.0' })

vim.call('plug#end')



