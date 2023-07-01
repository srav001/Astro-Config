-- Auto load last session

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Only load the session if nvim was started with no args
    if vim.fn.argc(-1) == 0 then
      -- Save these to a different directory, so our manual sessions don't get polluted
      require("resession").load(vim.fn.getcwd(), { dir = "dirsession", silence_errors = true })
    end
  end,
})

return {
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "echasnovski/mini.move",
    version = "*",
    config = function() require("mini.move").setup() end,
    event = "User AstroFile",
  },
  {
    "mg979/vim-visual-multi",
    event = "User AstroFile",
  },
}
