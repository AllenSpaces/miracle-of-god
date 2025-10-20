local M = {}

M.COLORS = {
	FG = "#c6dcfc",
	BG = "#1e1e1e",
	DEFAULT = "#b4ceff",
	GRAY = "#999999",
	BLUE = "#c8ebf6",
	GREEN = "#e0fdcd",
	YELLOW = "#fefed3",
	CYAN = "#c8ffee",
	RED = "#fcc7c6",
	PURPLE = "#dbdbff",
	ORANGE = "#ffe2ce",
	PINK = "#ffd7fd",
	BROWN = "#ffd79a",
	IDENTIFY = "#bfdbfa",

	-- 为了兼容新结构添加的映射
	PRIMARY = "#c8ebf6", -- 使用蓝色作为主色调
	SECONDARY = "#ffe2ce", -- 使用橙色作为次要色
	SUCCESS = "#e0fdcd", -- 使用绿色作为成功色
	WARNING = "#fefed3", -- 使用黄色作为警告色
	ERROR = "#fcc7c6",   -- 使用红色作为错误色
	INFO = "#c8ffee",    -- 使用青色作为信息色
	SELECTION = "#2d3748", -- 选择背景色
	COMMENT = "#999999", -- 注释颜色
	STRING = "#e0fdcd",  -- 字符串颜色
	KEYWORD = "#ffd7fd", -- 关键字颜色
	FUNCTION = "#c8ebf6", -- 函数颜色
	TYPE = "#fefed3",    -- 类型颜色
	VARIABLE = "#ffe2ce", -- 变量颜色
	GRAY_LIGHT = "#b4ceff", -- 浅灰色
	GRAY_DARK = "#666666", -- 深灰色
}

return M
