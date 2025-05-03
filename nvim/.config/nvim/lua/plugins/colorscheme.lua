return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
		end
	},
	{
		"Mofiqul/dracula.nvim",
		config = function()
			vim.cmd.colorscheme "dracula"
		end
	},
}
