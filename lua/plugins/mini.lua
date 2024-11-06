return {
	"echasnovski/mini.nvim",
	config = function()
		-- Better Around/Inside textobjects
		--
		-- Examples:
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [Q]uote
		--  - ci'  - [C]hange [I]nside [']quote
		require("mini.ai").setup({ n_lines = 500 })

		-- Add/delete/replace surroundings (brackets, quotes, etc.)
		--
		-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
		-- - sd'   - [S]urround [D]elete [']quotes
		-- - sr)'  - [S]urround [R]eplace [)] [']
		require("mini.surround").setup()

		-- Simple and easy statusline.
		--  You could remove this setup call if you don't like it,
		--  and try some other statusline plugin
		local statusline = require("mini.statusline")
		-- set use_icons to true if you have a Nerd Font
		statusline.setup({ use_icons = true })
		-- You can configure sections in the statusline by overriding their
		-- default behavior. For example, here we set the section for
		-- cursor location to LINE:COLUMN
		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_location = function()
			return "%2l:%-2v"
		end

		-- Navigate and manipulate file system
		require("mini.files").setup({
			mappings = {
				synchronize = "w",
				go_in_plus = "<CR>",
			},
		})
		local minifiles_toggle = function()
			if not MiniFiles.close() then
				MiniFiles.open()
			end
		end
		vim.keymap.set("n", "-", minifiles_toggle, { desc = "Open parent directory" })

		-- Split and join arguments
		-- "gS" - toggle split/join
		require("mini.splitjoin").setup()

		-- Move any selection in any direction
		require("mini.move").setup()

		--[[
		-- Visalize and work with indent scope
		require("mini.indentscope").setup({
			symbol = "▏",
			draw = { animation = require("mini.indentscope").gen_animation.none() },
		})
		--]]

		-- ... and there is more!
		--  Check out: https://github.com/echasnovski/mini.nvim
	end,
}
