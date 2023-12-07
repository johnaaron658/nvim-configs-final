require("workspaces").setup()

vim.keymap.set("n", "<leader>ww", vim.cmd.WorkspacesOpen)
