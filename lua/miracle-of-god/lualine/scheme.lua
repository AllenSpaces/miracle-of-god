local M = {}

function M.lualine()
	local colors = require("miracle-of-god.utils.color").COLORS
	local miracle_of_god = {}

	-- 正常模式
	miracle_of_god.normal = {
		a = { bg = "NONE", fg = colors.BLUE },
		b = { bg = "NONE", fg = colors.DEFAULT },
		c = { bg = "NONE", fg = colors.GRAY },
	}

	-- 插入模式
	miracle_of_god.insert = {
		a = { bg = "NONE", fg = colors.GREEN },
		b = { bg = "NONE", fg = colors.DEFAULT },
		c = { bg = "NONE", fg = colors.GRAY },
	}

	-- 可视模式
	miracle_of_god.visual = {
		a = { bg = "NONE", fg = colors.YELLOW },
		b = { bg = "NONE", fg = colors.DEFAULT },
		c = { bg = "NONE", fg = colors.GRAY },
	}

	-- 命令模式
	miracle_of_god.command = {
		a = { bg = "NONE", fg = colors.RED },
		b = { bg = "NONE", fg = colors.DEFAULT },
		c = { bg = "NONE", fg = colors.GRAY },
	}

	-- 替换模式
	miracle_of_god.replace = {
		a = { bg = "NONE", fg = colors.PINK },
		b = { bg = "NONE", fg = colors.DEFAULT },
		c = { bg = "NONE", fg = colors.GRAY },
	}

	-- 终端模式
	miracle_of_god.terminal = {
		a = { bg = "NONE", fg = colors.CYAN },
		b = { bg = "NONE", fg = colors.DEFAULT },
		c = { bg = "NONE", fg = colors.GRAY },
	}

	-- 非活动状态
	miracle_of_god.inactive = {
		a = { bg = "NONE", fg = colors.GRAY },
		b = { bg = "NONE", fg = colors.GRAY },
		c = { bg = "NONE", fg = colors.GRAY },
	}

	return miracle_of_god
end

return M
