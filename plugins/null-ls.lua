return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    local null_ls = require "null-ls"

    config.sources = {
      -- Set a formatter
      null_ls.builtins.formatting.stylua,
      require("null-ls").builtins.formatting.prettier.with {
        filetypes = {
          "html",
          "markdown",
          "css",
          "scss",
          "vue",
          "svelte",
          "typescript",
          "javascript",
          "json",
          "astro",
          "typescriptreact",
          "javascriptreact",
        },
      },
    }
    return config -- return final config table
  end,
}
