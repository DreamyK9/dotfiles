return {
	-- "github/copilot.vim", -- Original Copilot plugin
	"zbirenbaum/copilot.lua", -- Lua rewrite
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({})
	end,
}
