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
   view = {
      width = 30,
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

M.statusline = {
  lsp_icon = {
    provider = ""
    -- provider = {
    --   name = 'file_info',
    --   opts = {
    --     type = 'relative'
    --   }
    -- },
    -- provider = function()
    --   if next(vim.lsp.buf_get_clients()) ~= nil then
    --     local lsp_name = vim.lsp.get_active_clients()[1].name
    --     return "  " .. lsp_name .. " "
    --   else
    --     return ""
    --   end
    -- end,
  },

  current_line = {
    provider = "position"
  }

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
