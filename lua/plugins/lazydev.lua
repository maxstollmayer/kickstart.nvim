return {
	{
	"folke/lazydev.nvim",
	ft = "lua", -- only load in lua files
	opts = {
		library = {
			-- Load luvit types when the `vim.uv` word is found
			{ path = "luvit-meta/library", words = { "vim%.uv" } },
		},
	},
},
{ "Bilal2453/luvit-meta", lazy = true }, -- optional `vim.uv` typings
}
