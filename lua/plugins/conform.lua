return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			c = { "clang-format" },
			cpp = { "clang-format" },
			lua = { "stylua" },
			python = { "isort", "black" },
			java = { "google-java-format" },
			rust = { "rustfmt" },
			bash = { "shfmt" },
			fish = { "fish_indent" },
			css = { "prettierd", "prettier", stop_after_first = true },
			html = { "prettierd", "prettier", stop_after_first = true },
			xhtml = { "prettierd", "prettier", stop_after_first = true },
			xq = { "xq" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
		},
	},

	keys = {
		{
			"<leader>gf",
			function()
				require("conform").format({
					async = true,
				})
			end,
			mode = { "n", "v" },
			desc = "Format file",
		},
	},
}
