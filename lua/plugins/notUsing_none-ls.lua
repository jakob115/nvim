return {
	-- "nvimtools/none-ls.nvim",
	--
	-- opts = function()
	-- 	local null_ls = require("null-ls")
	-- 	local diagnostics_sources = require("config.null_ls.diagnostics")
	--
	-- 	local sources = {}
	-- 	for _, source in ipairs(diagnostics_sources) do
	-- 		local builtin = null_ls.builtins.diagnostics[source]
	-- 		if builtin then
	-- 			table.insert(sources, builtin)
	-- 		end
	-- 	end
	--
	-- 	return {
	-- 		sources = sources,
	-- 	}
	-- end,
	--
	-- init = function() -- runs before plugin in loaded
	-- 	vim.diagnostic.config({
	-- 		virtual_text = {
	-- 			prefix = "●",
	-- 			spacing = 8,
	-- 		},
	-- 		signs = true, -- Show signs in the gutter (left column)
	-- 		underline = true, -- Underline problematic code
	-- 		update_in_insert = false, -- Don't update diagnostics while typing (prevents flickering)
	-- 		severity_sort = true, -- Sort diagnostics by severity
	-- 	})
	-- end,
	--
	-- keys = {
	-- 	{
	-- 		"]d",
	-- 		function()
	-- 			vim.diagnostic.goto_next()
	-- 		end,
	-- 		desc = "Go to next diagnostic",
	-- 		mode = "n",
	-- 	},
	-- 	{
	-- 		"[d",
	-- 		function()
	-- 			vim.diagnostic.goto_prev()
	-- 		end,
	-- 		desc = "Go to previus diagnostic",
	-- 		mode = "n",
	-- 	},
	-- },
}
--[[
	config = function()
		local null_ls = require("null-ls")

		local sources = {}

		-- Formating
        local formatting_sources = require("config.null_ls.formatting")

		local formatting_args = {}
		local clang_format_args = require("config.null_ls.clang_format_args")-
		for _, source in ipairs(formatting_sources) do
			local builtin = null_ls.builtins.formatting[source]
			if builtin then
				if source == "clang_format" then
					table.insert(
						sources,
						builtin.with({
							filetypes = { "c", "cpp" },
							extra_args = {"--style", "file"}, -- to use .clang-format
							-- extra_args = clang_format_args, -- to use clang_format_args
						})
					)
					-- elseif source == "google_java_format" then
					-- table.insert(
					-- sources,
					-- builtin.with({
					-- extra_args = { "--aosp" },
					-- })
					-- )
				elseif source == "black" then
					table.insert(
						sources,
						builtin.with({
							extra_args = { "--line-length", "88" },
						})
					)
				else
					table.insert(sources, builtin.with({ extra_args = formatting_args }))
				end
			end
		end

		vim.keymap.set("n", "<leader>gf", function()
			vim.lsp.buf.format({
				async = true,
				options = {
					tabSize = 4,
					insertSpaces = true,
				},
				filter = function(client)
					return client.name == "null-ls"
				end,
			})
		end, {})
]]
