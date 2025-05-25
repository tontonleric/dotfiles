return {
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls"}
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
			lspconfig.pyright.setup({})

			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})

			vim.lsp.set_log_level("debug")
		end
	},
	{
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
		end
	}
}
