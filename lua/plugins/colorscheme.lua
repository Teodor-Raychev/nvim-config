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

-- return {
--   -- Theme NeoTokyo
--   "tokyonight.nvim",
--   lazy = true,
--   priority = 1000,
--   opts = {
--     transparent = true,
--     styles = {
--       sidebars = "transparent",
--       floats = "transparent",
--     },
--   },
--   config = function()
--     vim.cmd([[colorscheme tokyonight-storm]])
--   end,
-- }
return {
  "folke/tokyonight.nvim",
  lazy = true,
  opts = {
    transparent = true,
    style = "storm",
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
}
