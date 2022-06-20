local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  ---------------------
  -- Package Manager --
  ---------------------
  use "wbthomason/packer.nvim"                      -- Packer manage itself

  use { "nvim-lua/plenary.nvim" }

  use { "ellisonleao/gruvbox.nvim" }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  ---------------------
  -- LSP Extensions  --
  ---------------------
  use 'neovim/nvim-lspconfig'                       -- Configurations for Nvim LSP

  use {
    "williamboman/nvim-lsp-installer",
    requires = {
      { "neovim/nvim-lspconfig" },
      { "simrat39/rust-tools.nvim" },
      { "jose-elias-alvarez/typescript.nvim" },
      { "someone-stole-my-name/yaml-companion.nvim" },
      {
        "Saecki/crates.nvim",
        event = { "BufRead Cargo.toml" },
        config = function()
          require("crates").setup()
        end,
      },
      {
        "vuki656/package-info.nvim",
        event = { "BufRead package.json" },
        config = function()
          require("package-info").setup()
        end
      },
    },
    config = function()
      require("plugins.lsp-setup")
    end,
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
