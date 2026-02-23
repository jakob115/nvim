return {
    --[[
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	opts = {
		close_if_last_window = true,
		clipboard = {
			sync = "global",
		},
	},
	keys = {
		{
			"<C-n>",
			function()
				vim.cmd("Neotree filesystem reveal left")
			end,
			desc = "Neo-tree: reveal filesystem",
		},
		{
			"<C-q>",
			function()
				vim.cmd("Neotree close")
			end,
			desc = "Neo-tree: close filesystem",
		},
	},
    ]]
}
