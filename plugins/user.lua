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
  {
    "mg979/vim-visual-multi",
    event = "User AstroFile",
  },
  {
    "zbirenbaum/copilot.lua",
    event = { "InsertEnter" },
    cmd = { "Copilot" },
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<C-l>",
          accept_word = false,
          accept_line = false,
          dismiss = "<C-]>",
        },
      },
    },
  },
  {
    "folke/trouble.nvim",
    cmd = {"Trouble", "TroubleToggle"},
    lazy = true,
    config = true,
  },
  -- {
  --   "filipdutescu/renamer.nvim",
  --   branch = "master",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --   },
  --   lazy = true,
  --   opts = {
  --     title = 'Rename',
  --     padding = {
  --       top = 0,
  --       left = 0,
  --       bottom = 0,
  --       right = 0,
  --     },
  --     min_width = 15,
  --     max_width = 45,
  --     border = true,
  --     border_chars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
  --     show_refs = true,
  --     with_qf_list = true,
  --     with_popup = true,
  --     handler = nil,
  --   }
  -- },
  -- {
  --   "simrat39/symbols-outline.nvim",
  --   cmd = "SymbolsOutline",
  --   lazy = true,
  --   config = true,
  -- }
}
