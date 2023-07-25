return {
  -- Configure AstroNvim updates
  updater = {
    remote = "origin",     -- remote to use
    channel = "stable",    -- "stable" or "nightly"
    version = "latest",    -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "nightly",    -- branch name (NIGHTLY ONLY)
    commit = nil,          -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil,     -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false,  -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false,     -- automatically quit the current session after a successful update
    remotes = {            -- easily add new remotes to track
      --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
      --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
      --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
    },
  },

  colorscheme = "astrodark",

  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  diagnostics = {
    virtual_text = true,
    underline = true,
  },

  lsp = {
    -- customize lsp formatting options
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true,     -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- "go",
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          -- "python",
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
        -- "lua_ls",
        "volar",
      },
      timeout_ms = 1000, -- default format timeout
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
    },
    -- enable servers that you already have installed without mason
    servers = {
      -- "pyright"
    },
  },

  -- Configure require("lazy").setup() options
  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        -- customize default disabled vim plugins
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },

  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
    local lspconfig = require "lspconfig"

    -- Eslint auto fix command
    if lspconfig.eslint then
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = { "*.tsx", "*.ts", "*.jsx", "*.js", "*.vue", "*.svelte", "*.astro" },
        command = "silent! EslintFixAll",
        group = vim.api.nvim_create_augroup("MyAutocmdsForEslintAutoFix", {}),
      })
    end

    if lspconfig.volar and lspconfig.volar.setup then
      lspconfig.volar.setup {
        -- use takeover mode if volar exists (instead of tsserver + volar). Offers better performance
        filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
        settings = {
          typescript = {
            inlayHints = {
              enumMemberValues = {
                enabled = true,
              },
              functionLikeReturnTypes = {
                enabled = true,
              },
              includeInlayFunctionParameterTypeHints = {
                enabled = true,
              },
              parameterNames = {
                enabled = true,
                suppressWhenArgumentMatchesName = true,
              },
              parameterTypes = {
                enabled = true,
              },
              propertyDeclarationTypes = {
                enabled = true,
              },
              includeInlayFunctionLikeReturnTypeHints = {
                enabled = true,
              },
              variableTypes = {
                enabled = true,
              },
            },
          },
          javascript = {
            inlayHints = {
              enumMemberValues = {
                enabled = true,
              },
              functionLikeReturnTypes = {
                enabled = true,
              },
              includeInlayFunctionParameterTypeHints = {
                enabled = true,
              },
              parameterNames = {
                enabled = true,
                suppressWhenArgumentMatchesName = true,
              },
              parameterTypes = {
                enabled = true,
              },
              propertyDeclarationTypes = {
                enabled = true,
              },
              includeInlayFunctionLikeReturnTypeHints = {
                enabled = true,
              },
              variableTypes = {
                enabled = true,
              },
            },
          },
        },
      }
    end

    -- if lspconfig.tsserver and lspconfig.tsserver.setup then
    --   lspconfig.tsserver.setup({
    --     settings = {
    --       typescript = {
    --         inlayHints = {
    --           includeInlayParameterNameHints = 'all',
    --           includeInlayParameterNameHintsWhenArgumentMatchesName = false,
    --           includeInlayFunctionParameterTypeHints = true,
    --           includeInlayVariableTypeHints = true,
    --           includeInlayVariableTypeHintsWhenTypeMatchesName = false,
    --           includeInlayPropertyDeclarationTypeHints = true,
    --           includeInlayFunctionLikeReturnTypeHints = true,
    --           includeInlayEnumMemberValueHints = true,
    --         }
    --       },
    --       javascript = {
    --         inlayHints = {
    --           includeInlayParameterNameHints = 'all',
    --           includeInlayParameterNameHintsWhenArgumentMatchesName = false,
    --           includeInlayFunctionParameterTypeHints = true,
    --           includeInlayVariableTypeHints = true,
    --           includeInlayVariableTypeHintsWhenTypeMatchesName = false,
    --           includeInlayPropertyDeclarationTypeHints = true,
    --           includeInlayFunctionLikeReturnTypeHints = true,
    --           includeInlayEnumMemberValueHints = true,
    --         }
    --       }
    --     }
    --   })
    -- end
  end,
}
