-- bootstrap lazy.nvim, LazyVim and your plugins
vim.g.mapleader = " "
vim.g.maplocalleader = " "
require("config.lazy")
-- try transparent:
-- function Transparent(color)
--   color = color or "tokyonight-storm"
--   vim.cmd.colorscheme(color)
--   vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--   vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--   -- vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
-- end
-- Transparent()
