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
			-- Formatters
			"prettier", -- JavaScript & Co. formatter
			"eslint_d", -- JavaScript formatter
			"stylua", -- lua formatter
			"ruff", -- Blazingly fast, comprehensive python formatter and linter, written in Rust
			"clangd", -- c/c++ LSP implementation
		}

		require("mason-lspconfig").setup({})

		require("mason-tool-installer").setup({
			automatic_installation = true,
			ensure_installed = tools,
		})

		-- Fixes vim.lsp complaining about missing config
		for _, server in ipairs(tools) do
			vim.lsp.config(server, {})
		end
	end,
}
