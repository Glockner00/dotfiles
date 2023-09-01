vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Join selected items
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Joind selected lines (backward)
vim.keymap.set("n", "J", "mzJ`z")            -- Join lines without adding spaces
vim.keymap.set("n", "<C-d>", "<C-d>zz")      -- Scroll half page down
vim.keymap.set("n", "<C-u>", "<C-u>zz")      -- Scroll half page up
vim.keymap.set("n", "n", "nzzzv")            -- Center current line ater search
vim.keymap.set("n", "N", "Nzzzv")            -- Center current line before search

-- Collab
vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- pdf viewer
function OpenPDF()
    local path = vim.fn.expand('%:p')
    vim.fn.system('zathura ' .. path)
end

vim.api.nvim_set_keymap('n', '<leader>z', ':lua OpenPDF()<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>sp', ':vsp<CR>', { noremap = true, silent = true })

-- Editing text
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])                                       -- Yank selected line to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])                                                -- Yank to end of line and copy to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])                                       -- Delete selected text
vim.keymap.set("x", "<leader>p", [["_dP]])                                               -- Paste and replace selection
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- Search and replace the word that you are on.

-- Miscellanoeus
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)                               -- Instead of using a filetree
vim.keymap.set("i", "<C-c>", "<Esc>")                                       -- Exit
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)                        -- Format using LSP
vim.keymap.set("n", "Q", "<nop>")                                           -- Disable Ex mode
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")                            -- Jump to next quickfix item
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")                            -- Jump to previous  quickfix item.
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")                        -- Jump to next location list item
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")                        -- Jump to previous location list item
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) -- Make the current file executable
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- For making tmux work with vim commands.
local M = {}
M.general = {
    n = {
        ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
        ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
        ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
        ["<C-k>"] = { "<cmd> TmuxNavigateUo<CR>", "window up" },
    }
}


