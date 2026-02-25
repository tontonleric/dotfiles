return {
	{
		'nvim-treesitter/nvim-treesitter',
		branch = "main",
		version = false,
		lazy = false,
		build = ':TSUpdate',
		config = function(_, opts)
			vim.api.nvim_create_autocmd('User', { pattern = 'TSUpdate',
			callback = function()
				require('nvim-treesitter.parsers').norg = {
					install_info = {
					path = '~/Projects/tree-sitter-norg',
					-- optional entries
					location = 'parser',
					generate = true,
					generate_from_json = false,
					queries = 'queries/neovim', -- symlink queries from given directory
					},
				}
			end})
		end
	}
}
