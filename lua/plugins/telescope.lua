return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
	},

	keys = {
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "Telescope: find files",
		},
		{
			"<leader>fg",
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "Telescope: live grep",
		},
		{
			"<leader>fb",
			function()
				require("telescope.builtin").buffers()
			end,
			desc = "Telescope: buffers",
		},
		{
			"<leader>fo",
			function()
				require("telescope.builtin").oldfiles()
			end,
			desc = "Telescope: old files",
		},
		{
			"<leader>ss",
			function()
				require("telescope.builtin").spell_suggest()
			end,
			desc = "Telescope: suggest spelling for word",
		},
		{
			"<leader>lk",
			function()
				require("telescope.builtin").keymaps()
			end,
			desc = "Telescope: list normal mode keymappings",
		},
	},

	-- For telescope-ui-select
	opts = function()
		local themes = require("telescope.themes")
		return {

			-- other options

			extensions = {
				["ui-select"] = {
					themes.get_dropdown({}),
				},
			},
		}
	end,
	config = function(_, opts)
		local telescope = require("telescope")
		telescope.setup(opts)
		telescope.load_extension("ui-select")
	end,
}
