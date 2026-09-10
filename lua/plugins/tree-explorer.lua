return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons",
		},

		opts = {
			close_if_last_window = true,

			filesystem = {
				follow_current_file = {
					enabled = true,
				},
				hijack_netrw_behavior = "open_default",
				use_libuv_file_watcher = true,
			},

			window = {
				width = 30,
				mappings = {
					["<space>"] = "none",
					["<cr>"] = "open",
					["o"] = "open",
					["s"] = "open_split",
					["v"] = "open_vsplit",
					["t"] = "open_tabnew",
					["h"] = "close_node",
					["R"] = "refresh",
					["a"] = "add",
					["d"] = "delete",
					["r"] = "rename",
					["c"] = "copy",
					["m"] = "move",
					["q"] = "close_window",
				},
			},

			default_component_configs = {
				indent = {
					with_expanders = true,
				},
				icon = {
					folder_closed = "",
					folder_open = "",
					folder_empty = "",
				},
			},
		},
	},
}
