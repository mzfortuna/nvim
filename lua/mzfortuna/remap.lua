vim.g.mapleader = " "

vim.keymap.set("n", "<leader><leader>", "/<++><CR>ca<")
vim.keymap.set("i", "<C-Enter>", "<Esc>o")
-- windows
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>rf", ":!tmux split-window -h && tmux send 'run %' ENTER <CR><CR>")
vim.keymap.set("n", "<leader>rb", ":!tmux split-window -d -h run % <CR><CR>")

vim.keymap.set("n", "<C-t>", ":vertical split<CR> :wincmd l<CR> :terminal<CR> :vertical resize 50<CR>i")

vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")
