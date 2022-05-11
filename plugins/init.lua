return {
  ["windwp/nvim-ts-autotag"] = {
    ft = { "html", "javascriptreact" },
    after = "nvim-treesitter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("custom.plugins.null-ls").setup()
    end,
  },

  ["nvim-lualine/lualine.nvim"] = {},
  -- ["folke/which-key.nvim"] = {},
  ['nvim-telescope/telescope-fzf-native.nvim'] = {},
  ['phaazon/hop.nvim'] = {},
  ['mg979/vim-visual-multi'] = {},
}
