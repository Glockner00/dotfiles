vim.g.tex_flavor = 'latex'               -- Set LaTeX as the default flavor
vim.g.vimtex_compiler_method = 'latexmk' -- Use latexmk for compilation
vim.g.vimtex_auto_save = 1
vim.g.vimtex_quickfix_mode = 0
vim.g.vimtex_view_method='zathura'
vim.g.vimtex_quickfix_mode=0

vim.keymap.set("n", "<leader>vc", ":VimtexCompile")
vim.keymap.set("n", "<leader>vv", ":VimtexView")

vim.g.tex_conceal = "abdmgs"
vim.opt.conceallevel = 2
vim.g.vimtex_quickfix_mode = 0
vim.g.vimtex_compiler_latexmk_engines = {["_"] = "-lualatex"}
vim.g.vimtex_view_enabled = 0
vim.g.vimtex_view_automatic = 0
vim.g.vimtex_indent_on_ampersands = 0
vim.g.tex_compiles_successfully = false
vim.g.term_pdf_vierer_open = false
