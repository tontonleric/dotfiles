return {
	{
		"nvim-neorg/neorg",
		lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
		version = "*", -- Pin Neorg to the latest stable release
		config = true,
		opts = {
			load = { 
			["core.defaults"] = {},
			["core.dirman"] = {
				config = {
					workspaces = {
						home = "~/Projects/Notes", -- Format: <name_of_workspace> = <path_to_workspace_r>
					},
					index = "index.norg", -- The name of the main (root) .norg file
					default_workspace = "home"
				}
			}
		}
		}
	}
}
