return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			local servers = require("config.lsp_servers")
			require("mason-lspconfig").setup({
				ensure_installed = servers,
				automatic_enable = false,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- Configure LSP servers
			local servers = require("config.lsp_servers")
			vim.lsp.enable(servers)

			-- Set keybinds
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			--vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			--vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
