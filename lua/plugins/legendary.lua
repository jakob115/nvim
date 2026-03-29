return {
	{
		"stevearc/dressing.nvim",
		opts = {
			select = {
				enabled = true,
			},
		},
	},
	{
		"mrjones2014/legendary.nvim",
		priority = 10000,
		lazy = false,
		opts = {
			extensions = {
				lazy_nvim = {
					auto_register = true,
				},
			},
		},
		keys = {
			{ "<leader>l", "<CMD>Legendary<CR>", desc = "Open Legendary" },
		},
	},
}
