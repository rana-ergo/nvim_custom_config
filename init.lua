-- MAPPINGS
local map = require("core.utils").map

map("n", "<leader>cc", ":Telescope <CR>")
map("n", "<leader>q", ":q <CR>")
map("n", "<C-q>", ":q! <CR>")

-- require("my autocmds file") or just declare them here
require "custom.mappings"

-- PLUGINS SETUP
require "custom.plugins.hop"
require "custom.plugins.whichkey"
