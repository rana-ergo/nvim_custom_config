local status_ok, hop = pcall(require, "hop")
if not status_ok then
  return
end

hop.setup {
  keys = 'etovxqpdygfblzhckisuran'
}


local map = require("core.utils").map

-- Hop key mapping
map("n", "s", "<cmd>lua require'hop'.hint_words()<cr>")
map("n", ",", "<cmd>lua require'hop'.hint_lines()<cr>")
map("v", "s", "<cmd>lua require'hop'.hint_words()<cr>")
map("v", ",", "<cmd>lua require'hop'.hint_lines()<cr>")
map("i", "<A-s>", "<ESC>:lua require'hop'.hint_words()<CR>")

