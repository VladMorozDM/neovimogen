-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {'nyoom-engineering/oxocarbon.nvim'}
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
-- or                            , branch = '0.1.x'
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdateSync'}),
  use("theprimeagen/harpoon"),
  use('mbbill/undotree'),
  requires = { {'nvim-lua/plenary.nvim'} }
}
end)