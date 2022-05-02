return {
  ['williamboman/nvim-lsp-installer'] = {},
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

  ["nvim-telescope/telescope-media-files.nvim"] = {
    after = "telescope.nvim",
    config = function()
      require("telescope").load_extension "media_files"
    end,
  },
  ["nvim-lualine/lualine.nvim"] = {},
  ["folke/which-key.nvim"] = {},
  ['nvim-telescope/telescope-fzf-native.nvim'] = {},
  ['phaazon/hop.nvim'] = {},
  ['mg979/vim-visual-multi'] = {},
}
