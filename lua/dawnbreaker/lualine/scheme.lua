local M = {}

function M.lualine()
	local colors = require("dawnbreaker.utils.color").COLORS
	local dawnbreaker = {}

	-- 正常模式
	dawnbreaker.normal = {
		a = { bg = "NONE", fg = colors.BLUE, bold = true },
		b = { bg = "NONE", fg = colors.DEFAULT },
		c = { bg = "NONE", fg = colors.GRAY },
	}

	-- 插入模式
	dawnbreaker.insert = {
		a = { bg = "NONE", fg = colors.GREEN, bold = true },
		b = { bg = "NONE", fg = colors.DEFAULT },
		c = { bg = "NONE", fg = colors.GRAY },
	}

	-- 可视模式
	dawnbreaker.visual = {
		a = { bg = "NONE", fg = colors.YELLOW, bold = true },
		b = { bg = "NONE", fg = colors.DEFAULT },
		c = { bg = "NONE", fg = colors.GRAY },
	}

	-- 命令模式
	dawnbreaker.command = {
		a = { bg = "NONE", fg = colors.RED, bold = true },
		b = { bg = "NONE", fg = colors.DEFAULT },
		c = { bg = "NONE", fg = colors.GRAY },
	}

	-- 替换模式
	dawnbreaker.replace = {
		a = { bg = "NONE", fg = colors.PINK, bold = true },
		b = { bg = "NONE", fg = colors.DEFAULT },
		c = { bg = "NONE", fg = colors.GRAY },
	}

	-- 终端模式
	dawnbreaker.terminal = {
		a = { bg = "NONE", fg = colors.CYAN, bold = true },
		b = { bg = "NONE", fg = colors.DEFAULT },
		c = { bg = "NONE", fg = colors.GRAY },
	}

	-- 非活动状态
	dawnbreaker.inactive = {
		a = { bg = "NONE", fg = colors.GRAY },
		b = { bg = "NONE", fg = colors.GRAY },
		c = { bg = "NONE", fg = colors.GRAY_DARK },
	}

	return dawnbreaker
end

return M
