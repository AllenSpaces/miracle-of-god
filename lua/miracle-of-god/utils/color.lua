local M = {}

M.COLORS = {
	-- 基础颜色
	FG = "#e6e6e6",
	BG = "#1a1a1a",
	DEFAULT = "#e6e6e6",

	-- 语义化颜色
	PRIMARY = "#7dcfff", -- 主色调 - 蓝色
	SECONDARY = "#ff9e64", -- 次要色 - 橙色
	SUCCESS = "#a9ff68", -- 成功色 - 绿色
	WARNING = "#ffd93d", -- 警告色 - 黄色
	ERROR = "#ff6b6b",  -- 错误色 - 红色
	INFO = "#4fc3f7",   -- 信息色 - 青色

	-- 语法高亮颜色
	BLUE = "#7dcfff",
	GREEN = "#a9ff68",
	YELLOW = "#ffd93d",
	CYAN = "#4fc3f7",
	RED = "#ff6b6b",
	PURPLE = "#c792ea",
	ORANGE = "#ff9e64",
	PINK = "#f78c6c",
	BROWN = "#c3e88d",

	-- 中性色
	GRAY = "#6c7086",
	GRAY_LIGHT = "#8b9199",
	GRAY_DARK = "#4a4a4a",

	-- 特殊用途
	IDENTIFY = "#7dcfff",
	SELECTION = "#2d3748",
	COMMENT = "#6c7086",
	STRING = "#c3e88d",
	KEYWORD = "#c792ea",
	FUNCTION = "#82aaff",
	TYPE = "#ffcb6b",
	VARIABLE = "#f07178",
}

return M
