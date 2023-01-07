vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move highlihted lines. Code can be moved into if statements and so on.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z") -- keeps cursor at the same place.
vim.keymap.set("n", "<C-d>", "<C-d>zz") --half page jumping(keeps cursor centerd)
vim.keymap.set("n", "<C-u>", "<C-u>zz") --half page jumping(keeps cursor centerd)
vim.keymap.set("n", "n", "nzzzv") --keeps search cursor centerd
vim.keymap.set("n", "N", "Nzzzv") --keeps search curso centerd

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

vim.keymap.set("x", "<leader>p", [["_dP]]) --keeps a paste after a highlight

--asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]) --yanks into system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]]) --switch projects
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>") --saves when when entering Normalmode

vim.keymap.set("n", "Q", "<nop>") -- Dont press Q :(
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")--switch projects
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

--Quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

--search and replace the word that you are on.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--compiler
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
