-- require("my autocmds file") or just declare them here
-- require "custom.autocmds"
autocmd BufEnter * :lua require('lazygit.utils').project_root_dir()

-- vim init
vim.cmd('source ~/.config/nvim/lua/custom/init.vim')
