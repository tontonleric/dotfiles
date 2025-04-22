return {
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons',
		config = function()
			local bufferline = require("bufferline")
			bufferline.setup({
				options = {
					mode = "buffers",
					style_preset = bufferline.style_preset.minimal,
					themable = false,
					numbers = "ordinale",
					diagnostics = "nvim_lsp",
					offsets = {
						{
							filetype = "neo-tree",
							text = "File Explorer",
							text_align = "left",
							separator = true
						}
					}
				}
			})
			vim.keymap.set({'n','c'},'<Leader>n','<cmd>BufferLineCycleNext<cr>')
			vim.keymap.set({'n','c'},'<Leader>p','<cmd>BufferLineCyclePrev<cr>')
		end
	}
}
