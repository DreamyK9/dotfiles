return {
	-- Lsp_lines adds multi-line rendering for diagnostics
	"ErichDonGubler/lsp_lines.nvim",
	config = function()
		require("lsp_lines").setup({})
		vim.diagnostic.config({ virtual_lines = false })
		vim.keymap.set("", "<Leader>l", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
	end,
}
