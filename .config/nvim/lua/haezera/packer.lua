vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                            , branch = '0.1.x',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  use({ 
      'sainnhe/gruvbox-material',
      as = 'gruvbox-material',
      config = function()
          vim.cmd('colorscheme gruvbox-material')
      end
  })

  use('nvim-treesitter/nvim-treesitter')

  use('preservim/nerdtree')

  use('vimwiki/vimwiki')

  use('nvim-tree/nvim-tree.lua')

  use('mbbill/undotree')

  use('m4xshen/autoclose.nvim')

  use('lervag/vimtex')

  use('sirver/ultisnips')

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
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
end)
