local ok, null_ls = pcall(require, "null-ls")
if not ok then
    print("Failed to load null-ls.nvim")
    return
end

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.clang_format.with({
            extra_args = {
                "--style",
                "{BasedOnStyle: Google, IndentWidth: 4, BreakBeforeBinaryOperators: NonAssignment, AllowShortFunctionsOnASingleLine: None}",
            },
        }),
        null_ls.builtins.formatting.latexindent.with({
            extra_args = {
                "-y",
                "noAdditionalIndent:document:0;problem:0,defaultIndent:'  ',verbatimEnvironments:cpp:1;python:1",
            },
        }),
        null_ls.builtins.formatting.ocamlformat.with({
            extra_args = {
                "--no-comment-check",
                "--name",
                "$FILENAME",
            },
        }),
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.formatting.stylua.with({
            extra_args = { "--indent-type", "Spaces" },
        }),
    },
})
