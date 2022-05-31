-- make sure you maintain the structure of `core/default_config.lua` here,
local M = {}

local plugin_conf = require "custom.plugins.configs"
local userPlugins = require "custom.plugins"

M.options = {
   user = function()
       require("custom.options")
   end,
}

M.plugins = {

   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
      statusline = {
         separator_style = "default", -- default/round/slant/block/arrow
      },
   },

   remove = {},

   override = {
      ["kyazdani42/nvim-tree.lua"] = plugin_conf.nvimtree,
      ["nvim-treesitter/nvim-treesitter"] = plugin_conf.treesitter,
      ["NvChad/nvim-colorizer.lua"] = plugin_conf.colorizer,
      ["nvim-telescope/telescope.nvim"] = plugin_conf.telescope,
      ["feline-nvim/feline.nvim"] = plugin_conf.statusline,
      -- ["wbthomason/packer.nvim"] = { snapshot = "stable_chad" },
   },

   user = userPlugins,
}

M.mappings = require "custom.mappings"

M.ui = {
   theme = "onedark",
   transparency = false,
}

return M
