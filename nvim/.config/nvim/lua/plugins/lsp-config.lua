return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "apex_ls", "lua_ls", "yamlls", "tsserver" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.apex_ls.setup({
        apex_jar_path = '/home/tontonleric/.local/share/nvim/mason/share/apex-language-server/apex-jorje-lsp.jar'
      })
      lspconfig.yamlls.setup({})
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.lsp.set_log_level("debug")
    end
  }
}
