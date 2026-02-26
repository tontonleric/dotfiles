return {{
	"nvim-neorg/neorg",
      lazy = true,
      -- Lazy-load on .norg files.
      ft = "norg",
      -- If we use the Neorg command, _then_ load Neorg.
      cmd = { "Neorg" },
      -- Don't pin the version, but _do_ use versioned tags.
      version = "*",
      --[[
      -- This seems to be broken.
      -- build = ":Neorg sync-parsers",
      --]]
      -- Options for neorg. This will automatically call
      -- `require("neorg").setup(opts)`.
      opts = {
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {},
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/Projects/Notes",
              },
              default_workspace = "notes",
            },
          },
          ["core.export"] = {},
          ["core.export.html"] = {},
          ["core.qol.toc"] = {
            config = {
              close_after_use = true,
            },
          },
        },
      },
      dependencies = {
        "nvim-neorg/tree-sitter-norg",
        "nvim-neorg/tree-sitter-norg-meta",
      },
	  requires = {
        "nvim-lua/plenary.nvim",
        "rcarriga/nvim-notify",
      },
    },}
