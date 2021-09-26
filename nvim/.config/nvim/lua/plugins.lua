return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Install nvim-cmp, and buffer source as a dependency
use {
  "hrsh7th/nvim-cmp",
  requires = {
    "hrsh7th/vim-vsnip",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-nvim-lsp"
 }
}
  -- lsp support
  use 'neovim/nvim-lspconfig'
  -- code highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
  -- status line
use {
        'hoob3rt/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons'
        },
}

  -- file manager
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
	config = function() require('config.nvim-tree') end,
    }
    -- collection of useful lua functions
    use {
        'nvim-lua/plenary.nvim',
    }
end)
