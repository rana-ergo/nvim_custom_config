-- MAPPINGS
local M = {}

M.disabled = {
  n = {
    ["<leader>e"] = "",
    ["<leader>D"] = "",
    ["<leader>w"] = "",
  }
}

M.global = {
  n = {
    ["<leader>w"] = { "<cmd> w! <CR>", "   Save Buffer" },
    ["<C-q>"] = { "<cmd> q! <CR>", "   Close Buffer without Saving" },
    -- ["<leader>h"] = { "<cmd> nohlsearch <CR>", "No Highlight" },
    -- Resize with arrows
    ["<C-Up>"] = { "<cmd> resize -2 <CR>", "ﭕ   ^^" },
    ["<C-Down>"] = { "<cmd> resize +2 <CR>", "ﭕ   ~^" },
    ["<C-Left>"] = { "<cmd> vertical resize -2 <CR>", "ﭕ   <<" },
    ["<C-Right>"] = { "<cmd> vertical resize +2 <CR>", "ﭕ   >>" },
    -- Jump scrolling
    -- ["<C-j>"] = { "<cmd> 4j <CR>", "Fast Scroll Down" },
    -- ["<C-k>"] = { "<cmd> 4k <CR>", "Fast Scroll Up" },
  },

  v = {
    -- Jump scrolling
    ["<C-j>"] = { "<cmd> 4j <CR>", "省   Fast Scroll Down" },
    ["<C-k>"] = { "<cmd> 4k <CR>", "省   Fast Scroll Up" },
  },

}

-- Plugin Based Mappings

M.nvimtree = {
  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "   Explorer" },
  },
}

M.telescope = {
  n = {
    ["<leader>s"] = { "<cmd> Telescope live_grep <CR>", "   Live Search" },
    ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "   Find Files" },
    ["<C-f>"] = { "<cmd> lua require'telescope.builtin'.grep_string(require('telescope.themes').get_ivy({ winblend = 10 })) <CR>", "   Find String" },
  },

  v = {
    ["<C-f>"] = { "<cmd> lua require'telescope.builtin'.grep_string(require('telescope.themes').get_dropdown({ winblend = 10 })) <CR>", "   Find String" },
  },

  i = {
    ["<C-f>"] = { "<cmd> lua require'telescope.builtin'.grep_string(require('telescope.themes').get_cursor({ winblend = 10 })) <CR>", "   Find String" },
  },
}

M.hop = {
  n = {
    ["s"] = { "<cmd> lua require'hop'.hint_words() <CR>", "   Go There" },
    [","] = { "<cmd> lua require'hop'.hint_lines() <CR>", "   Go To Line" },
  },

  v = {
    ["s"] = { "<cmd> lua require'hop'.hint_words() <CR>", "   Go There" },
    [","] = { "<cmd> lua require'hop'.hint_lines() <CR>", "   Go To Line" },
  },

  i = {
    ["<A-s>"] = { "<ESC>:lua require'hop'.hint_words()<CR>", "   Go There"}
  }

}

-- -- Move text up and down
-- map("n", "<A-j>", "<Esc>:m .+1<CR>==gi")
-- map("n", "<A-k>", "<Esc>:m .-2<CR>==gi")
-- map("v", "<A-j>", ":m .+1<CR>==")
-- map("v", "<A-k>", ":m .-2<CR>==")
-- map("x", "<A-j>", ":move '>+1<CR>gv-gv")
-- map("x", "<A-k>", ":move '<-2<CR>gv-gv")
--
return M
