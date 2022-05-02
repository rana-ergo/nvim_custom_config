local map = require("core.utils").map

-- telescope
map("n", "<leader>ff", ":Telescope find_files <CR>")
map("n", "<leader>ft", ":Telescope live_grep <CR>")

