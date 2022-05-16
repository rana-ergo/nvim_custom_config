-- MAPPINGS
local map = nvchad.map
-- local cmd = vim.cmd

map("n", "<leader>cc", ":Telescope <CR>")
map("n", "<leader>q", ":q <CR>")
map("n", "<leader>w", ":w <CR>")
map("n", "<C-q>", "<cmd> :q! <CR>") -- ctrl + q to exit without save buffer/file

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>")
map("n", "<C-Down>", ":resize +2<CR>")
map("n", "<C-Left>", ":vertical resize -2<CR>")
map("n", "<C-Right>", ":vertical resize +2<CR>")

-- Move text up and down
map("n", "<A-j>", "<Esc>:m .+1<CR>==gi")
map("n", "<A-k>", "<Esc>:m .-2<CR>==gi")
map("v", "<A-j>", ":m .+1<CR>==")
map("v", "<A-k>", ":m .-2<CR>==")
map("x", "<A-j>", ":move '>+1<CR>gv-gv")
map("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- jump scrolling 
map("n", "<C-j>", "4j")
map("n", "<C-k>", "4k")
map("v", "<C-j>", "4j")
map("v", "<C-k>", "4k")

map("n", "<C-e>", "<cmd> :NvimTreeToggle <CR>")
-- map("n", "<leader>e", "<cmd> :NvimTreeToggle <CR>")

-- Telescope
map("n", "<leader>ff", ":Telescope find_files <CR>")
map("n", "<leader>ft", ":Telescope live_grep <CR>")

map("n", "<C-f>", ":lua require'telescope.builtin'.grep_string(require('telescope.themes').get_ivy({ winblend = 10 }))<CR>")
map("v", "<C-f>", ":lua require'telescope.builtin'.grep_string(require('telescope.themes').get_dropdown({ winblend = 10 }))<CR>")
map("i", "<C-f>", "<Esc>:lua require'telescope.builtin'.grep_string(require('telescope.themes').get_cursor({ winblend = 10 }))<CR>")
