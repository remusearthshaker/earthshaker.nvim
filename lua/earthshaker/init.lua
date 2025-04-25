-- Earthshaker Neovim Theme Plugin
-- Author: Remus Alexander
-- Stylized for warmth, subtlety, familiarity

local M = {}

M.colors = {
	bg = "#1c1b1a",
	fg = "#d8c8b3",
	cursor = "#e49b5d",
	visual_bg = "#2e2d2c",
	comment = "#888878",
	string = "#708271",
	keyword = "#deb769",
	func = "#e49b5d",
	type = "#c69455",
	variable = "#d8c8b3",
	constant = "#f3b87a",
	warning = "#c47e35",
	error = "#e17340",
	line_num = "#3a3938",
	accent = "#8a6c47",
}

M.setup = function()
	local c = M.colors

	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	vim.o.termguicolors = true
	vim.g.colors_name = "earthshaker"

	-- UI Elements
	vim.api.nvim_set_hl(0, "Normal", { fg = c.fg, bg = c.bg })
	vim.api.nvim_set_hl(0, "Cursor", { fg = c.bg, bg = c.cursor })
	vim.api.nvim_set_hl(0, "Visual", { fg = c.fg, bg = c.visual_bg })
	vim.api.nvim_set_hl(0, "LineNr", { fg = c.line_num })
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = c.warning, bold = true })
	vim.api.nvim_set_hl(0, "StatusLine", { fg = c.bg, bg = c.accent })
	vim.api.nvim_set_hl(0, "StatusLineNC", { fg = c.comment, bg = c.line_num })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = "#232220" })

	-- Syntax
	vim.api.nvim_set_hl(0, "Comment", { fg = c.comment, italic = true })
	vim.api.nvim_set_hl(0, "String", { fg = c.string })
	vim.api.nvim_set_hl(0, "Keyword", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "Function", { fg = c.func })
	vim.api.nvim_set_hl(0, "Identifier", { fg = c.variable })
	vim.api.nvim_set_hl(0, "Type", { fg = c.type })
	vim.api.nvim_set_hl(0, "Constant", { fg = c.constant })
	vim.api.nvim_set_hl(0, "Error", { fg = c.error, bold = true })
	vim.api.nvim_set_hl(0, "WarningMsg", { fg = c.warning, bold = true })

	-- Treesitter (nvim-treesitter override highlights)
	vim.api.nvim_set_hl(0, "@comment", { fg = c.comment, italic = true })
	vim.api.nvim_set_hl(0, "@keyword", { fg = c.keyword })
	vim.api.nvim_set_hl(0, "@function", { fg = c.func })
	vim.api.nvim_set_hl(0, "@type", { fg = c.type })
	vim.api.nvim_set_hl(0, "@string", { fg = c.string })
	vim.api.nvim_set_hl(0, "@constant", { fg = c.constant })
	vim.api.nvim_set_hl(0, "@variable", { fg = c.variable })

	-- nvim-tree UI integration
	vim.api.nvim_set_hl(0, "NvimTreeNormal", { fg = c.fg, bg = c.bg })
	vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { fg = c.fg, bg = c.bg })
	vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { fg = c.line_num, bg = c.bg })
	vim.api.nvim_set_hl(0, "NvimTreeStatusLine", { fg = c.line_num, bg = c.bg })
	vim.api.nvim_set_hl(0, "NvimTreeStatusLineNC", { fg = c.line_num, bg = c.bg })
	vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { fg = c.bg, bg = c.bg })

	-- neo-tree integration
	vim.api.nvim_set_hl(0, "NeoTreeNormal", { fg = c.fg, bg = c.bg })
	vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { fg = c.fg, bg = c.bg })
	vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { fg = c.bg, bg = c.bg })
	vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { fg = c.line_num, bg = c.bg })
	vim.api.nvim_set_hl(0, "NeoTreeStatusLine", { fg = c.line_num, bg = c.bg })
	vim.api.nvim_set_hl(0, "NeoTreeStatusLineNC", { fg = c.line_num, bg = c.bg })

	-- snacks.nvim highlight integration
	vim.api.nvim_set_hl(0, "SnackNormal", { fg = c.fg, bg = c.bg })
	vim.api.nvim_set_hl(0, "SnackBorder", { fg = c.line_num, bg = c.bg })
	vim.api.nvim_set_hl(0, "SnackTitle", { fg = c.keyword, bg = c.bg, bold = true })
	vim.api.nvim_set_hl(0, "SnackPrompt", { fg = c.fg, bg = c.visual_bg })
	vim.api.nvim_set_hl(0, "SnackPromptBorder", { fg = c.line_num, bg = c.bg })
	vim.api.nvim_set_hl(0, "SnackPromptPrefix", { fg = c.accent })
	vim.api.nvim_set_hl(0, "SnackPromptCounter", { fg = c.comment })
	vim.api.nvim_set_hl(0, "SnackMatch", { fg = c.constant, bold = true })
	vim.api.nvim_set_hl(0, "SnackSelection", { fg = c.fg, bg = c.visual_bg, bold = true })
	vim.api.nvim_set_hl(0, "SnackScrollbar", { fg = c.comment })
	vim.api.nvim_set_hl(0, "SnackThumb", { fg = c.line_num, bg = c.line_num })
end

return M
