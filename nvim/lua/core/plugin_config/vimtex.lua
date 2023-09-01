vim.g.tex_flavor = 'latex'               -- Set LaTeX as the default flavor
vim.g.vimtex_compiler_method = 'latexmk' -- Use latexmk for compilation
vim.g.vimtex_auto_save = 1
vim.g.vimtex_quickfix_mode = 0

vim.keymap.set("n", "<leader>vc", ":VimtexCompile")
vim.keymap.set("n", "<leader>vv", ":VimtexView")
