return require("packer").startup(function()
	-- Manage the manager itself
	use 'wbthomason/packer.nvim'
	-- Material theme
	use 'kaicataldo/material.vim'
	-- lightline.vim
	use 'itchyny/lightline.vim'
	-- NERDTree
	use 'preservim/nerdtree'
	-- Telescope.nvim
	use {
  		'nvim-telescope/telescope.nvim',
  		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}
	-- Tree sitter
	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-treesitter/playground'
	-- Completion plugins
	use 'nvim-lua/completion-nvim'
	use 'norcalli/snippets.nvim'	
	use 'tjdevries/nlua.nvim'
    -- LSP
	use 'neovim/nvim-lspconfig'
    -- Discord presence
    use 'andweeb/presence.nvim'
    -- Markdown preview
    use {'iamcco/markdown-preview.nvim', run = 'call mkdp#util#install()'} 
end)
