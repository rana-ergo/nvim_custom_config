-- require("my autocmds file") or just declare them here
require "custom.mappings"

local options = {
  swapfile = false,                        -- creates a swapfile
  colorcolumn = '90',
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
