local globals = {
	mapleader = " ",
	maplocalleader = " ",
	loaded_netrw = 1, -- disable netrw
	loaded_netrwPlugin = 1,
}

local options = {
	termguicolors = true, -- enable better colors
	number = true, -- make line numbers default
	relativenumber = true, -- relative line numbers
	mouse = "a", -- enable mouse
	showmode = false, -- mode is already shown in statusline
	breakindent = true,
	undofile = true, -- save undo history
	ignorecase = true, -- case-insensitive search
	smartcase = true, -- case-sensitive if \C or capital letters in search term
	signcolumn = "yes",
	updatetime = 250, -- decrease for better performance
	timeoutlen = 300, -- displays which-key popup sooner
	splitright = true,
	splitbelow = true,
	list = true, -- sets whitespace display
	listchars = { tab = "» ", trail = "·", nbsp = "␣" },
	inccommand = "split", -- preview substitutions live
	incsearch = true, -- start searching before pressing enter
	cursorline = true, -- show line cursor is on
	scrolloff = 10, -- minimal number of lines to keep above and below cursor
	expandtab = true, -- expand tabs for spaces
	tabstop = 4, -- how many spaces for a tab
	softtabstop = 4,
	shiftwidth = 4,
	title = true, -- display terminal window title
	titlestring = [[%t in %{fnamemodify(getcwd(), ':~:.')}]],
	-- shell = "pwsh", -- set default shell
	-- shellcmdflag = "-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues['Out-File:Encoding']='utf8';Remove-Alias -Force -ErrorAction SilentlyContinue tee;",
	-- shellredir = "2>&1 | %%{ '$_' } | Out-File %s; exit $LastExitCode",
	-- shellpipe = "2>&1 | %%{ '$_' } | tee %s; exit $LastExitCode",
	-- shellquote = "",
	-- shellxquote = "",
	hlsearch = true, -- highlight on search
	autoindent = true,
}

for k, v in pairs(globals) do
	vim.g[k] = v
end

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- sync clipboard between OS and Neovim
-- schedule after "UiEnter" for better startup-time
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)
