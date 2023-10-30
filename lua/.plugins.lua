vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
	--self management
	use 'wbthomason/packer.nvim'
	
	--tis is theming
	use { 'AlphaTechnolog/pywal.nvim', as = 'pywal' }

	--hex code colorizing
	use { 'norcalli/nvim-colorizer.lua', as = 'colorizer' }
	
	--vimtex for math notes with latex
	use 'lervag/vimtex'
	use 'NeitaNakamura/tex-conceal.vim'
	use 'SirVer/ultisnips'

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons',
		},
	}

	use {
		'nvim-telescope/telescope.nvim', branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	
	-- rust dev
	use 'williamboman/mason.nvim'    
    	use 'williamboman/mason-lspconfig.nvim'

	use 'neovim/nvim-lspconfig' 
    	use 'simrat39/rust-tools.nvim'
	

end)
