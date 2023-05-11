return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mason.nvim" },
    opts = function()
      local nls = require("null-ls")
      return {
        root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
        sources = {
          -- bash
          nls.builtins.formatting.shfmt,
          -- json
          nls.builtins.diagnostics.jsonlint,
          -- html/django
          -- nls.builtins.formatting.djhtml,
          -- lua
          nls.builtins.formatting.stylua,
          -- markdown
          nls.builtins.diagnostics.markdownlint,
          -- python
          nls.builtins.diagnostics.flake8,
          nls.builtins.formatting.autopep8,
        },
      }
    end,
  },
}
