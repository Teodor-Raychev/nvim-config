-- palenight theme
-- return {
--   "alexmozaidze/palenight.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {},
--   config = function()
--     vim.cmd([[colorscheme palenight]])
--   end,
-- }

return {
  -- Theme NeoTokyo
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd([[colorscheme tokyonight-storm]])
  end,
}
