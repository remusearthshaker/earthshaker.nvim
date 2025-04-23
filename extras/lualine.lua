-- Earthshaker lualine theme

local colors = {
	bg = "#1c1b1a",
	fg = "#d8c8b3",
	yellow = "#bfa780",
	cyan = "#888878",
	darkblue = "#2e2d2c",
	green = "#708271",
	orange = "#e49b5d",
	violet = "#c69455",
	magenta = "#a6783b",
	blue = "#8a6c47",
	red = "#f3b87a",
}

return {
	normal = {
		a = { bg = colors.orange, fg = colors.bg, gui = "bold" },
		b = { bg = colors.darkblue, fg = colors.orange },
		c = { bg = colors.bg, fg = colors.fg },
	},
	insert = {
		a = { bg = colors.green, fg = colors.bg, gui = "bold" },
		b = { bg = colors.darkblue, fg = colors.green },
		c = { bg = colors.bg, fg = colors.fg },
	},
	visual = {
		a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
		b = { bg = colors.darkblue, fg = colors.violet },
		c = { bg = colors.bg, fg = colors.fg },
	},
	replace = {
		a = { bg = colors.red, fg = colors.bg, gui = "bold" },
		b = { bg = colors.darkblue, fg = colors.red },
		c = { bg = colors.bg, fg = colors.fg },
	},
	inactive = {
		a = { bg = colors.bg, fg = colors.comment, gui = "bold" },
		b = { bg = colors.bg, fg = colors.comment },
		c = { bg = colors.bg, fg = colors.comment },
	},
}
