return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = function()
			local servers = require("config.lsp_servers")
			return {
				ensure_installed = servers,
				automatic_enable = false,
			}
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			-- Configure LSP servers
			local servers = require("config.lsp_servers")

			-- chatgpt
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local server_overrides = {
				lua_ls = {
					capabilities = capabilities,
					settings = {
						Lua = {
							runtime = {
								version = "LuaJIT",
							},
							diagnostics = {
								globals = { "vim" },
							},
							workspace = {
								checkThirdParty = false,
								library = {
									vim.env.VIMRUNTIME,
								},
							},
							completion = {
								callSnippet = "Replace",
							},
						},
					},
				},
			}
			for _, server in ipairs(servers) do
				local config =
					vim.tbl_deep_extend("force", { capabilities = capabilities }, server_overrides[server] or {})
				vim.lsp.config(server, config)
			end


			vim.lsp.enable(servers)

			-- Set keybinds
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {desc = "LSP: show hover at cursor"})
			--vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			--vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {desc = "LSP: show code action at cursor"})
		end,
	},
}
