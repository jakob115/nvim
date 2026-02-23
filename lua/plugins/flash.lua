return {
	{
		"folke/flash.nvim",
		-- event = "verylazy",
		---@type flash.config
		opts = {},
		keys = {
			{
				"s",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump()
				end,
				desc = "flash",
			},
			{
				"S",
				mode = { "n", "x", "o" },
				function()
					require("flash").treesitter()
				end,
				desc = "flash treesitter",
			},
		},
	},
}
