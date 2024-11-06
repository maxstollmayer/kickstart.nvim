local function map(mode, lhs, rhs, desc, opts)
	local options = { noremap = true, silent = true }
	if desc then
		options.desc = desc
	end
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end

	vim.keymap.set(mode, lhs, rhs, options)
end

map("n", "<Esc>", "<cmd>nohlsearch<CR>") -- clear highlights on search when pressing <Esc> in normal mode
map("n", "[d", vim.diagnostic.goto_prev, "Go to previous [D]iagnostic message")
map("n", "]d", vim.diagnostic.goto_next, "Go to next [D]iagnostic message")
map("n", "<leader>e", vim.diagnostic.open_float, "Show diagnostic [E]rror messages")
map("n", "<leader>q", vim.diagnostic.setloclist, "Show diagnostic [Q]uickfix list")
map("t", "<Esc><Esc>", "<C-\\><C-n>", "Exit terminal mode")
map("t", "jk", "<C-\\><C-n>", "Exit terminal mode")
map("i", "jk", "<C-\\><C-n>", "Exit insert mode")
map("n", "<C-h>", "<C-w><C-h>", "Move focus to the left window")
map("n", "<C-j>", "<C-w><C-j>", "Move focus to the lower window")
map("n", "<C-k>", "<C-w><C-k>", "Move focus to the upper window")
map("n", "<C-l>", "<C-w><C-l>", "Move focus to the right window")

