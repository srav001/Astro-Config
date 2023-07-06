return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    {
      "windwp/nvim-ts-autotag",
      opts = {}
    }
  },
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "lua",
      "html",
      "scss",
      "javascript",
      "typescript",
      "vue",
      -- "astro",
      -- "svelte",
      -- "markdown",
    })
  end,
}
