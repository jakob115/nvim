return {
    --[[
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = true, -- make tokyonight not change the background
			style = "moon",
			dim_inactive = true,
		},

		config = function(_, opts)
			require("tokyonight").setup(opts)
			vim.cmd.colorscheme("tokyonight")
		end,
	},
    ]]
	--[[
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
    ]]
	{
		"rose-pine/neovim",
		name = "rose-pine",
        opts = {
            variant = "main",
            dim_inactive_windows = true;
            styles = {
                transparency = true,
            }
        },
		config = function(_, opts)
            require("rose-pine").setup(opts)
			vim.cmd.colorscheme("rose-pine")
		end,
	},
}
