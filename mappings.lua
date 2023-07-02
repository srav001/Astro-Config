-- Mapping data with "desc" stored directly by vim.keymap.set().

return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    [";"] = { ":", desc = "enter command mode" },

    -- Move through buffers with tab and Stab
    ["<tab>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<S-tab>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- NOTE TO SELF: Stop adding options that override sane defaults
    -- Adding goToDef manually since using lsp-inlayhints require lsp config which resets these defaults for lsps
    ["gD"] = {
      function() vim.lsp.buf.declaration() end,
      desc = "LSP declaration",
    },

    ["gd"] = {
      function() vim.lsp.buf.definition() end,
      desc = "LSP definition",
    },

    ["K"] = {
      function() vim.lsp.buf.hover() end,
      desc = "LSP hover",
    },

    ["gi"] = {
      function() vim.lsp.buf.implementation() end,
      desc = "LSP implementation",
    },

    ["gr"] = {
      function() vim.lsp.buf.references() end,
      desc = "LSP references",
    },

    --
    -- ["<leader>D"] = {
    --   function() vim.lsp.buf.type_definition() end,
    --   desc = "LSP definition type",
    -- },
    --
  },

  i = {
    -- go to  beginning and end
    ["<C-b>"] = { "<ESC>^i", desc = "Beginning of line" },
    ["<C-e>"] = { "<End>", desc = "End of line" },
  },

  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
