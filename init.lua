-- require("my autocmds file") or just declare them here
require "custom.mappings"

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

local options = {
  swapfile = false,                        -- creates a swapfile
  colorcolumn = '90',
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
