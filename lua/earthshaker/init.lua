-- Earthshaker Neovim Theme Plugin
-- Author: Remus Alexander
-- Theme reborn: the living forest, blooming and breathing

local M = {}

M.colors = {
	bg = "#1a1c1b",
	fg = "#e0d6c3",
	cursor = "#ff9933",
	visual_bg = "#2c302c",
	comment = "#7c8474",
	string = "#90b48f",
	keyword = "#eabf6a",
	func = "#f28b50",
	type = "#d68e5d",
	variable = "#c9d8b6",
	constant = "#ffc07c",
	warning = "#f2a65e",
	error = "#ff6655",
	number = "#f7c59f",
	boolean = "#e27d60",
	operator = "#a3b18a",
	field = "#dab785",
	property = "#b5bfa1",
	parameter = "#acc196",
	namespace = "#809775",
	punctuation = "#a6a6a6",
	line_num = "#444844",
	accent = "#6c8f6c",
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
	vim.api.nvim_set_hl(0, "Number", { fg = c.number })
	vim.api.nvim_set_hl(0, "Boolean", { fg = c.boolean })
	vim.api.nvim_set_hl(0, "Operator", { fg = c.operator })

	-- Treesitter (full coverage)
	vim.api.nvim_set_hl(0, "@comment", { fg = c.comment, italic = true })
	vim.api.nvim_set_hl(0, "@keyword", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "@function", { fg = c.func })
	vim.api.nvim_set_hl(0, "@type", { fg = c.type })
	vim.api.nvim_set_hl(0, "@string", { fg = c.string })
	vim.api.nvim_set_hl(0, "@constant", { fg = c.constant })
	vim.api.nvim_set_hl(0, "@variable", { fg = c.variable })
	vim.api.nvim_set_hl(0, "@number", { fg = c.number })
	vim.api.nvim_set_hl(0, "@boolean", { fg = c.boolean })
	vim.api.nvim_set_hl(0, "@operator", { fg = c.operator })
	vim.api.nvim_set_hl(0, "@field", { fg = c.field })
	vim.api.nvim_set_hl(0, "@property", { fg = c.property })
	vim.api.nvim_set_hl(0, "@parameter", { fg = c.parameter })
	vim.api.nvim_set_hl(0, "@namespace", { fg = c.namespace })
	vim.api.nvim_set_hl(0, "@punctuation", { fg = c.punctuation })

	-- nvim-tree UI
	vim.api.nvim_set_hl(0, "NvimTreeNormal", { fg = c.fg, bg = c.bg })
	vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { fg = c.fg, bg = c.bg })
	vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { fg = c.line_num, bg = c.bg })
	vim.api.nvim_set_hl(0, "NvimTreeStatusLine", { fg = c.line_num, bg = c.bg })
	vim.api.nvim_set_hl(0, "NvimTreeStatusLineNC", { fg = c.line_num, bg = c.bg })
	vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { fg = c.bg, bg = c.bg })

	-- neo-tree UI
	vim.api.nvim_set_hl(0, "NeoTreeNormal", { fg = c.fg, bg = c.bg })
	vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { fg = c.fg, bg = c.bg })
	vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { fg = c.bg, bg = c.bg })
	vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { fg = c.line_num, bg = c.bg })
	vim.api.nvim_set_hl(0, "NeoTreeStatusLine", { fg = c.line_num, bg = c.bg })
	vim.api.nvim_set_hl(0, "NeoTreeStatusLineNC", { fg = c.line_num, bg = c.bg })

	-- snacks.nvim UI
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

-- Inline Lualine theme
M.lualine = {
	normal = {
		a = { bg = M.colors.accent, fg = M.colors.bg, gui = "bold" },
		b = { bg = M.colors.line_num, fg = M.colors.fg },
		c = { bg = M.colors.bg, fg = M.colors.fg },
	},
	insert = {
		a = { bg = M.colors.string, fg = M.colors.bg, gui = "bold" },
	},
	visual = {
		a = { bg = M.colors.type, fg = M.colors.bg, gui = "bold" },
	},
	replace = {
		a = { bg = M.colors.error, fg = M.colors.bg, gui = "bold" },
	},
	inactive = {
		a = { bg = M.colors.line_num, fg = M.colors.comment },
		b = { bg = M.colors.line_num, fg = M.colors.comment },
		c = { bg = M.colors.line_num, fg = M.colors.comment },
	},
}

return M
