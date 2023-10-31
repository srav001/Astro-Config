return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
     opts.ensure_installed = {
      "lua",
      "html",
      "scss",
      "markdown",
      "javascript",
      "typescript",
      "markdown",
      -- "vue",
      -- "astro",
      "svelte",
      -- "markdown",
    }
  end,
}
