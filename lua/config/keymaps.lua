-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })
keymap.set("n", "<leader><space>", require("telescope.builtin").buffers, { desc = "[ ] Find existing buffers" })
keymap.set("n", "<leader>/", function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
    winblend = 10,
    previewer = false,
  }))
end, { desc = "[/] Fuzzily search in current buffer" })

keymap.set("n", "<leader>gf", require("telescope.builtin").git_files, { desc = "Search [G]it [F]iles" })
keymap.set("n", "<leader>sf", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp" })
keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })

-- jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)
-- tabs
keymap.set("n", "te", "tabedit", opts)
-- Do not yank with x
-- keymap.set("n", "x", '"_x')

-- Increment/decrement Integer num
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select All
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Move lines up and down while in visual mode.
keymap.set("v", "j", ":m '>+1<CR>gv=gv")
keymap.set("v", "k", ":m '<-2<CR>gv=gv")
-- Keep cursor as move.
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
-- Keep cursor in middle on search.
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
-- Keep cursor centered as move up and down.
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
-- keep the paste buffer.
keymap.set("x", "<leader>p", '"_dP')
-- next greatest remap ever : asbjornHaland yanks to system clipboard.
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
keymap.set("n", "<leader>f", vim.lsp.buf.format)
-- search file and replace:
keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
