return {
	"nvim-mini/mini.nvim",
	version = "*",
	config = function()
		require("mini.surround").setup()
	end,
}
