local fn = vim.fn

vim.g.package_home = fn.stdpath("data") .. "/site/pack/packer/"
local packer_install_dir = vim.g.package_home .. "/opt/packer.nvim"

local packer_repo = "https://github.com/wbthomason/packer.nvim"
local install_cmd = string.format("10split |term git clone --depth=1 %s %s", packer_repo, packer_install_dir)

-- Auto-install packer in case it hasn't been installed.
if fn.glob(packer_install_dir) == "" then
  vim.api.nvim_echo({ { "Installing packer.nvim", "Type" } }, true, {})
  vim.cmd(install_cmd)
end

-- Load packer.nvim
vim.cmd("packadd packer.nvim")
require("packer").startup({
  function(use)
        -- it is recommened to put impatient.nvim before any other plugins
      use {'lewis6991/impatient.nvim', config = [[require('impatient')]]}
      use({"wbthomason/packer.nvim", opt = true})

      -- 目录树
      use {
        'kyazdani42/nvim-tree.lua',
        requires = { 'kyazdani42/nvim-web-devicons' },
        config = [[require('config.nvim-tree')]]
      }
      -- 欢迎页
      use { 'goolord/alpha-nvim', 
            event = 'VimEnter', 
            config = [[require('config.alpha-nvim')]] 
      }


      use {
        'nvim-telescope/telescope.nvim', 
        cmd = 'Telescope',
        requires = { {'nvim-lua/plenary.nvim'} }
      }

      use ({ "nvim-treesitter/nvim-treesitter",
             event = 'BufEnter', 
             run = ":TSUpdate" 
            --  config = [[require('config.treesitter')]] 
      })
  end
})

