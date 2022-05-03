-- user plugin configs!
require "custom.plugins.hop"
-- require "custom.plugins.whichkey"


-- overriding default plugin configs!
local M = {}

M.treesitter = {
   ensure_installed = {
      "vim",
      "python",
      "html",
      "css",
      "javascript",
      "json",
      "toml",
      "markdown",
      "c",
      "bash",
      "lua",
   },
}

M.nvimtree = {
   git = {
      enable = true,
   },
}

M.gitsigns = {
  current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
}

M.colorizer = {
   user_default_options = {
         names = true, -- "Name" codes like Blue
         RRGGBBAA = true, -- #RRGGBBAA hex codes
         css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
      },
}

M.telescope = {
   extensions = {
     -- fd is needed
      media_files = {
         filetypes = { "png", "webp", "jpg", "jpeg" },
      },
   },
}

return M
