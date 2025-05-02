-- Earthshaker.nvim — Vibrant Pastel Forest Edition
-- Author: Remus Alexander
-- A dark mode theme rooted in earth and blooming with vibrant life

local M = {}

M.colors = {
	bg = "#1a1c1b",
	fg = "#e0d6c3",
	cursor = "#ff9933",
	visual_bg = "#2c302c",
	comment = "#7c8474",
	string = "#a0d8b3", -- brightened green
	keyword = "#b57edc", -- lavender
	func = "#ccccff", -- periwinkle
	type = "#eabf6a",
	variable = "#c9d8b6",
	constant = "#ffc07c",
	warning = "#f2a65e",
	error = "#ff6655",
	number = "#f7c59f",
	boolean = "#e27d60",
	operator = "#a3b18a",
	field = "#dab785",
	property = "#b5bfa1", -- reverted to original muted tone
	parameter = "#a3c2ff", -- soft sky blue
	namespace = "#809775",
	punctuation = "#a6a6a6",
	line_num = "#444844",
	accent = "#6c8f6c",
	enum = "#ffc07c",
	attribute = "#c49ca0",
	lavender = "#b57edc",
	periwinkle = "#ccccff",
	rose = "#ffb6c1",
	pollen = "#f5e050",
}

function M.setup()
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
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = c.pollen, bold = true })
	vim.api.nvim_set_hl(0, "StatusLine", { fg = c.fg, bg = c.line_num })
	vim.api.nvim_set_hl(0, "StatusLineNC", { fg = c.comment, bg = c.line_num })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = c.visual_bg })

	-- Syntax
	vim.api.nvim_set_hl(0, "Comment", { fg = c.comment, italic = true })
	vim.api.nvim_set_hl(0, "String", { fg = c.string })
	vim.api.nvim_set_hl(0, "Keyword", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "Function", { fg = c.func, bold = true })
	vim.api.nvim_set_hl(0, "Identifier", { fg = c.variable })
	vim.api.nvim_set_hl(0, "Type", { fg = c.type })
	vim.api.nvim_set_hl(0, "Constant", { fg = c.constant })
	vim.api.nvim_set_hl(0, "Error", { fg = c.error, bold = true })
	vim.api.nvim_set_hl(0, "WarningMsg", { fg = c.warning, bold = true })
	vim.api.nvim_set_hl(0, "Number", { fg = c.number })
	vim.api.nvim_set_hl(0, "Boolean", { fg = c.boolean })
	vim.api.nvim_set_hl(0, "Operator", { fg = c.operator })

	-- Treesitter
	vim.api.nvim_set_hl(0, "@comment", { fg = c.comment, italic = true })
	vim.api.nvim_set_hl(0, "@keyword", { fg = c.keyword, bold = true })
	vim.api.nvim_set_hl(0, "@function", { fg = c.func })
	vim.api.nvim_set_hl(0, "@string", { fg = c.string })
	vim.api.nvim_set_hl(0, "@constant", { fg = c.constant })
	vim.api.nvim_set_hl(0, "@variable", { fg = c.variable })
	vim.api.nvim_set_hl(0, "@number", { fg = c.number })
	vim.api.nvim_set_hl(0, "@boolean", { fg = c.boolean })
	vim.api.nvim_set_hl(0, "@operator", { fg = c.operator })
	vim.api.nvim_set_hl(0, "@field", { fg = c.field })
	vim.api.nvim_set_hl(0, "@namespace", { fg = c.namespace })
	vim.api.nvim_set_hl(0, "@punctuation", { fg = c.punctuation })
	vim.api.nvim_set_hl(0, "@enum", { fg = c.enum })
	vim.api.nvim_set_hl(0, "@attribute", { fg = c.attribute })
	vim.api.nvim_set_hl(0, "@parameter", { fg = c.parameter })
	vim.api.nvim_set_hl(0, "@property", { fg = c.property })
	vim.api.nvim_set_hl(0, "@type", { fg = c.type, bold = true })

	-- Plugins
	vim.api.nvim_set_hl(0, "NvimTreeNormal", { fg = c.fg, bg = c.bg })
	vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = c.rose, bold = true })
	vim.api.nvim_set_hl(0, "NeoTreeNormal", { fg = c.fg, bg = c.bg })
	vim.api.nvim_set_hl(0, "SnackTitle", { fg = c.keyword, bg = c.bg, bold = true })
end

M.lualine = {
	normal = {
		a = { bg = M.colors.line_num, fg = M.colors.fg, gui = "bold" },
		b = { bg = M.colors.bg, fg = M.colors.comment },
		c = { bg = M.colors.bg, fg = M.colors.fg },
	},
	insert = {
		a = { bg = M.colors.string, fg = M.colors.bg, gui = "bold" },
	},
	visual = {
		a = { bg = M.colors.rose, fg = M.colors.bg, gui = "bold" },
	},
	replace = {
		a = { bg = M.colors.error, fg = M.colors.bg, gui = "bold" },
	},
	inactive = {
		a = { bg = M.colors.bg, fg = M.colors.comment },
		b = { bg = M.colors.bg, fg = M.colors.comment },
		c = { bg = M.colors.bg, fg = M.colors.comment },
	},
}

return M
