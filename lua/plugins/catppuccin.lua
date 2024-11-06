return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			integrations = {
				barbar = true,
				-- fidget = true,
				mason = true,
				mini = { enabled = true, indentscope_color = "surface0" },
				treesitter_context = true,
				lsp_trouble = true,
				which_key = true,
			},
		})
		vim.cmd.colorscheme("catppuccin-mocha")
	end,
}
