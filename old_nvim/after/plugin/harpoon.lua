local mark = require("harpoon.mark")
local ui = require("harpoon.mark")
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file) --add file to harpoon
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu) --toggle harpoon menu : ctrl + e

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end) --ctrl + h
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end) --ctrl + t
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end) --ctrl + n
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end) --ctrl + s


