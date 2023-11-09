-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(
    function(use)
        use 'wbthomason/packer.nvim'
        use 'junegunn/goyo.vim'
        use 'morhetz/gruvbox'
        use 'vim-airline/vim-airline'
        use 'tpope/vim-surround'
        use 'tpope/vim-commentary'
        use {
            "windwp/nvim-autopairs",
            config = function() require("nvim-autopairs").setup {} end
        }

        use { 'junegunn/fzf', run = ":call fzf#install()" }
        use { 'junegunn/fzf.vim' }
        use {
            'stevearc/aerial.nvim',
            config = function() require('aerial').setup() end
        }
        use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
        -- LSP zero
        use {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v2.x',
            requires = {
                -- LSP Support
                {'neovim/nvim-lspconfig'},             -- Required
                {                                      -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }
    end
)
