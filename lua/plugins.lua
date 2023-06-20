return require('packer').startup(function(use)
    --PACKER
    use 'wbthomason/packer.nvim'
    --THEME
    use 'Shatur/neovim-ayu'

    --Language server providers
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use 'neovim/nvim-lspconfig'
    use 'Hoffs/omnisharp-extended-lsp.nvim'
    
    --NVIM TREE
    use 'ryanoasis/vim-devicons'
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use 'lukas-reineke/indent-blankline.nvim'
    --LUALINE
    use 'nvim-lualine/lualine.nvim'
    --BUFFERLINE (TAB BARS)
    use 'moll/vim-bbye'
    use 'akinsho/bufferline.nvim'
    --SMOOTH-SCROLL
    use 'karb94/neoscroll.nvim'
    --TREESITTER
    use 'nvim-treesitter/nvim-treesitter'

    --NVIM-CMP
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    --TELESCOPE
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    --RUST SUPPORT
    use 'simrat39/rust-tools.nvim'
end)
