vim.g.mapleader = " "
vim.keymap.set("n", "<C-n>", vim.cmd.Ex)
vim.keymap.set("i", "<A-q>", "<Esc>")
vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-e>", "<C-u>zz")
vim.keymap.set("n", "<leader>/", function() require("Comment.api").toggle.linewise.current() end)
vim.keymap.set("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle);
vim.keymap.set("n", "<A-q>", vim.cmd.noh);
vim.keymap.set("n", "<leader>x", vim.cmd.q);
vim.keymap.set("n", "<A-w>", "<C-w>");

-- allows moving blocks with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv");
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv");

-- centers cursor on search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "p", "\"_dP")
