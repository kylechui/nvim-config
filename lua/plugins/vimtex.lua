vim.g.tex_flavor = "latex"
vim.g.tex_comment_nospell = 1
vim.g.vimtex_compiler_latexmk = {
    ["options"] = { "-shell-escape" }
}

-- Selects the default PDF viewer when compiling LaTeX files
-- SumatraPDF for Windows, Zathura for Linux
if vim.fn.has("win32") == true then
    vim.g.vimtex_view_general_viewer = "SumatraPDF"
    vim.g.vimtex_view_method = "SumatraPDF"
else
    vim.g.vimtex_view_general_viewer = "zathura"
    vim.g.vimtex_view_method = "zathura"
end
