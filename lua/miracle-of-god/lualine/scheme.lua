local M = {}

function M.lualine()
	local colors = require("miracle-of-god.utils.color").COLORS
	local miracle_of_god = {}

	-- 正常模式
	miracle_of_god.normal = {
		a = { bg = colors.BLUE_BG, fg = colors.BLUE, bold = true },
		b = { bg = colors.SELECTION, fg = colors.DEFAULT },
		c = { bg = colors.SELECTION, fg = colors.GRAY },
	}

	-- 插入模式
	miracle_of_god.insert = {
		a = { bg = colors.GREEN_BG, fg = colors.GREEN, bold = true },
		b = { bg = colors.SELECTION, fg = colors.DEFAULT },
		c = { bg = colors.SELECTION, fg = colors.GRAY },
	}

	-- 可视模式
	miracle_of_god.visual = {
		a = { bg = colors.YELLOW_BG, fg = colors.YELLOW, bold = true },
		b = { bg = colors.SELECTION, fg = colors.DEFAULT },
		c = { bg = colors.SELECTION, fg = colors.GRAY },
	}

	-- 命令模式
	miracle_of_god.command = {
		a = { bg = colors.RED_BG, fg = colors.RED, bold = true },
		b = { bg = colors.SELECTION, fg = colors.DEFAULT },
		c = { bg = colors.SELECTION, fg = colors.GRAY },
	}

	-- 替换模式
	miracle_of_god.replace = {
		a = { bg = colors.PINK_BG, fg = colors.PINK, bold = true },
		b = { bg = colors.SELECTION, fg = colors.DEFAULT },
		c = { bg = colors.SELECTION, fg = colors.GRAY },
	}

	-- 终端模式
	miracle_of_god.terminal = {
		a = { bg = colors.CYAN_BG, fg = colors.CYAN, bold = true },
		b = { bg = colors.SELECTION, fg = colors.DEFAULT },
		c = { bg = colors.SELECTION, fg = colors.GRAY },
	}

	-- 非活动状态
	miracle_of_god.inactive = {
		a = { bg = colors.SELECTION, fg = colors.GRAY },
		b = { bg = colors.SELECTION, fg = colors.GRAY },
		c = { bg = colors.SELECTION, fg = colors.GRAY_DARK },
	}

	return miracle_of_god
end

return M
