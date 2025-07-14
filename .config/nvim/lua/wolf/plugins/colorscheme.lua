return {
	{
		-- Nightfox is the pre-set color theme of nvim-lazy
		-- It is darker and less vibrant than catppuccin
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("nightfox").setup({
				options = {
					transparent = true,
				},
			})

			-- vim.cmd("colorscheme terafox")
		end,
	},
	{
		-- catppuccin makes neovim look fancy pastel
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			-- Possible flavors: catppuccin-latte (white), catppuccin-frappe (brighter), catppuccin-macchiato (neutral), catppuccin-mocha (darker, default)
			vim.cmd("colorscheme catppuccin-mocha")
		end,
	},
}
