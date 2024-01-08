return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "    ███    ██ ██    ██ ██ ███    ███",
        "    ████   ██ ██    ██ ██ ████  ████",
        "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
        "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
        "    ██   ████   ████   ██ ██      ██",
      }
      return opts
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      term_colors = true,
      transparent_background = false,
      color_overrides = {
        all = {
          rosewater = "#5b8fde",
          flamingo = "#fcb1b1",
          pink = "#f5bde6",
          mauve = "#caa2fc",
          red = "#ed8796",
          maroon = "#ee99a0",
          peach = "#faa575",
          yellow = "#eed49f",
          green = "#98cc87",
          teal = "#faa5a5",
          sky = "#ed8cd8",
          sapphire = "#7dc4e4",
          blue = "#80caff",
          lavender = "#ff8787",

          text = "#dbe3ff",

          subtext0 = "#615d69",

          overlay0 = "#504d57",

          surface0 = "#272629",
          surface1 = "#433f4d",

          -- subtext1 = "#bac2de",
          -- overlay2 = "#9399b2",
          -- overlay1 = "#7f849c",
          -- surface2 = "#c7d7fc",

          base = "#1a191c",
          mantle = "#1e2030",
          crust = "#181926",
        },
      },
      integrations = {
        dropbar = {
          enabled = true,
          color_mode = true,
        },
      },
    },
  },
}
