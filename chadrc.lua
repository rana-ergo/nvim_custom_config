-- make sure you maintain the structure of `core/default_config.lua` here,
local M = {}

vim.g.nvim_tree_icons = {
   default = "",
   symlink = "",
   git = {
      ignored = "◌",
      renamed = "➜",
      staged = "✓",
      unmerged = "",
      unstaged = "",
      untracked = "★",
   },
   folder = {
      default = "",
      empty = "",
      empty_open = "",
      open = " ",
      symlink = "",
      symlink_open = "",
   },
}
local plugin_conf = require "custom.plugins.configs"
local userPlugins = require "custom.plugins"

M.plugins = {

   options = {
      -- lspconfig = {
      --    setup_lspconf = "custom.plugins.lspconfig",
      -- },
   },

   override = {
      ["kyazdani42/nvim-tree.lua"] = plugin_conf.nvimtree,
      ["nvim-treesitter/nvim-treesitter"] = plugin_conf.treesitter,
      ["NvChad/nvim-colorizer.lua"] = plugin_conf.colorizer,
      ["nvim-telescope/telescope.nvim"] = plugin_conf.telescope,
   },

   user = userPlugins,
}

M.ui = {
   theme = "onedark",
   transparency = false,
}

return M
