return {
    "folke/trouble.nvim",
	cmd = "Trouble",
	opts = {}, -- default UI options
	keys = {
		{
			"<leader>xx",
			function()
				require("trouble").toggle("diagnostics")
			end,
			desc = "Diagnostics (all)",
		},
	},
}
