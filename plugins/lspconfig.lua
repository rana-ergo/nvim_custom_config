local M = {}

M.setup_lsp = function(attach, capabilities)

   local present, lsp_installer = pcall(require, "nvim-lsp-installer")

   if not present then
     return
   end
   
   lsp_installer.settings {
      ui = {
         icons = {
            server_installed = "﫟" ,
            server_pending = "",
            server_uninstalled = "✗",
         },
      },
   }

   lsp_installer.on_server_ready(function(server)
      local opts = {
         on_attach = attach,
         capabilities = capabilities,
         settings = {},
      }

      server:setup(opts)
      vim.cmd [[ do User LspAttachBuffers ]]
   end)
end

return M
