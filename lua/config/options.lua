-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Enable underculr Terminal dependend Example for Fish:
---vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[set conceallevel=0]])
vim.cmd([[set synmaxcol=200]])

local opt = vim.opt

opt.cursorline = true -- Enable highlighting of the current line
opt.termguicolors = true -- True color support
opt.pumblend = 10 -- Popup blend
