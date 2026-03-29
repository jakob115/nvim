return {
	{
		"nvim-lualine/lualine.nvim",

		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},

		-- opts = {
		-- 	options = {
		-- 		theme = "horizon",
		-- 	},
		-- },

		opts = function()
			local theme = require("lualine.themes.horizon")

			for _, modeData in pairs(theme) do
				if type(modeData) == "table" then
					for _, sectionName in ipairs({ "b", "c", "x", "y" }) do -- [a][b][c]    [x][y][z], choose to match bg
						if modeData[sectionName] then
							modeData[sectionName].bg = "NONE"
						end
					end
				end
			end

			return {
				options = {
					theme = theme,
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = {
						"branch",
						"diff",
						"diagnostics",
						"filename",
					},
					lualine_c = {}, -- has weird separator so avoid using
					lualine_x = {
						"encoding",
						"fileformat",
						"filetype",
						-- "filesize",
					},
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
			}
		end,
	},
}
