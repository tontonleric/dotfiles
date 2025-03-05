return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { "c", "lua", "apex", "soql", "sosl", "javascript", "html", "query", "toml", "python" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })

      vim.treesitter.language.register("apex", { "apexcode" })
    end,
  },
  {
    "nvim-treesitter/playground",
    config = function() end,
  },
}
