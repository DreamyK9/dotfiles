return {
	-- Mason installs and manages packages, like language servers
	"williamboman/mason.nvim",
	priority = 10,
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup()

		tools = {
			-- Language servers
			"html",
			"cssls",
			"tailwindcss",
			"eslint",
			"ts_ls",
			"jsonls",
			"pyright",
			"lua_ls",
			"bashls",
			"clangd", -- c/c++ LSP implementation
			-- Formatters
			"prettier", -- JavaScript & Co. formatter
			"eslint_d", -- JavaScript formatter
			"stylua", -- lua formatter
			"ruff", -- Blazingly fast, comprehensive python formatter and linter, written in Rust
		}

		require("mason-lspconfig").setup({})

		require("mason-tool-installer").setup({
			automatic_installation = {
				exclude = {
					"clangd",
				},
			},
			ensure_installed = tools,
		})

		vim.lsp.config["clangd"] = {
			cmd = {
				"clangd",
				"--fallback-style=webkit",
			},
		}

		-- Fixes vim.lsp complaining about missing config
		-- for _, server in ipairs(tools) do
		-- 	vim.lsp.config(server, {})
		-- end
	end,
}
