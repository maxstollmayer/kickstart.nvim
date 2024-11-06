return {
	"nvim-telescope/telescope.nvim",
	event = "VimEnter",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
		"nvim-tree/nvim-web-devicons",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make", cond = function() return vim.fn.executable "make" == 1 end },
	},
	config = function()
		require("telescope").setup({
			extensions = {
				["ui-select"] = { require("telescope.themes").get_dropdown() },
			},
		})

		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")
		
		local bi = require("telescope.builtin")
		local map = function(lhs, rhs, desc)
			vim.keymap.set("n", lhs, rhs, { desc = desc })
		end
		map("<leader>sh", bi.help_tags, "[S]earch [H]elp")
		map("<leader>sk", bi.keymaps, "[S]earch [K]eymaps")
		map("<leader>sf", bi.find_files, "[S]earch [F]iles")
		map("<leader>ss", bi.builtin, "[S]earch [S]elect Telescope")
		map("<leader>sw", bi.grep_string, "[S]earch current [W]ord")
		map("<leader>sg", bi.live_grep, "[S]earch by [G]rep")
		map("<leader>sd", bi.diagnostics, "[S]earch [D]iagnostics")
		map("<leader>sr", bi.resume, "[S]earch [R]esume")
		map("<leader>s.", bi.oldfiles, "[S]earch Recent Files [.]")
		map("<leader><leader>", bi.buffers, "Find existing buffers")

		vim.keymap.set("n", "<leader>s/", function()
			bi.live_grep {
				grep_open_files = true,
				prompt_title = "Live Grep in Open Files",
			}
		end,
		{ desc = "[S]earch[/] in Open Files" })

		vim.keymap.set("n", "<leader>sn", function()
			bi.find_files { cwd = vim.fn.stdpath "config" }
		end,
		{ desc = "[S]earch [N]eovim files" })
	end,
}
