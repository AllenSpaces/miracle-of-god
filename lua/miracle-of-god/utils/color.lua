local M = {}

M.COLORS = {
	-- 基础颜色
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

	-- 蓝色系深浅变化
	BLUE_LIGHT = "#e6f4ff", -- 浅蓝
	BLUE_DARK = "#9dd4f0",  -- 深蓝
	BLUE_DARKER = "#7bb8e0", -- 更深蓝
	BLUE_BG = "#1a2a3a",    -- 蓝色背景
	BLUE_BG_LIGHT = "#2a3a4a", -- 浅蓝色背景

	-- 绿色系深浅变化
	GREEN_LIGHT = "#f0fde8", -- 浅绿
	GREEN_DARK = "#c8e6b8",  -- 深绿
	GREEN_DARKER = "#b0d4a0", -- 更深绿
	GREEN_BG = "#1a2e1a",    -- 绿色背景
	GREEN_BG_LIGHT = "#2a3e2a", -- 浅绿色背景

	-- 黄色系深浅变化
	YELLOW_LIGHT = "#fffef0", -- 浅黄
	YELLOW_DARK = "#f5f4c0",  -- 深黄
	YELLOW_DARKER = "#e8e6a0", -- 更深黄
	YELLOW_BG = "#2e2a1a",    -- 黄色背景
	YELLOW_BG_LIGHT = "#3e3a2a", -- 浅黄色背景

	-- 青色系深浅变化
	CYAN_LIGHT = "#f0fffe", -- 浅青
	CYAN_DARK = "#a8e6e0",  -- 深青
	CYAN_DARKER = "#90d4d0", -- 更深青
	CYAN_BG = "#1a2e2e",    -- 青色背景
	CYAN_BG_LIGHT = "#2a3e3e", -- 浅青色背景

	-- 红色系深浅变化
	RED_LIGHT = "#fff0f0", -- 浅红
	RED_DARK = "#f0a8a8",  -- 深红
	RED_DARKER = "#e09090", -- 更深红
	RED_BG = "#2e1a1a",    -- 红色背景
	RED_BG_LIGHT = "#3e2a2a", -- 浅红色背景

	-- 紫色系深浅变化
	PURPLE_LIGHT = "#f5f0ff", -- 浅紫
	PURPLE_DARK = "#c8b8e6",  -- 深紫
	PURPLE_DARKER = "#b0a0d4", -- 更深紫
	PURPLE_BG = "#2a1a2e",    -- 紫色背景
	PURPLE_BG_LIGHT = "#3a2a3e", -- 浅紫色背景

	-- 橙色系深浅变化
	ORANGE_LIGHT = "#fff5f0", -- 浅橙
	ORANGE_DARK = "#f0c8a8",  -- 深橙
	ORANGE_DARKER = "#e0b090", -- 更深橙
	ORANGE_BG = "#2e1a0a",    -- 橙色背景
	ORANGE_BG_LIGHT = "#3e2a1a", -- 浅橙色背景

	-- 粉色系深浅变化
	PINK_LIGHT = "#fff0f5", -- 浅粉
	PINK_DARK = "#f0a8c8",  -- 深粉
	PINK_DARKER = "#e090b0", -- 更深粉
	PINK_BG = "#2e1a1e",    -- 粉色背景
	PINK_BG_LIGHT = "#3e2a2e", -- 浅粉色背景

	-- 棕色系深浅变化
	BROWN_LIGHT = "#fff5e6", -- 浅棕
	BROWN_DARK = "#e6c8a0",  -- 深棕
	BROWN_DARKER = "#d4b080", -- 更深棕
	BROWN_BG = "#2e1a0a",    -- 棕色背景
	BROWN_BG_LIGHT = "#3e2a1a", -- 浅棕色背景

	-- 灰色系深浅变化
	GRAY_LIGHT = "#cccccc", -- 浅灰
	GRAY_DARK = "#666666",  -- 深灰
	GRAY_DARKER = "#444444", -- 更深灰
	GRAY_BG = "#2a2a2a",    -- 灰色背景
	GRAY_BG_LIGHT = "#3a3a3a", -- 浅灰色背景

	-- 语义化颜色映射
	PRIMARY = "#c8ebf6",    -- 主色调 - 蓝色
	PRIMARY_LIGHT = "#e6f4ff", -- 浅主色调
	PRIMARY_DARK = "#9dd4f0", -- 深主色调
	PRIMARY_BG = "#1a2a3a", -- 主色调背景

	-- 次要色改为紫色系以匹配用户偏好
	SECONDARY = "#dbdbff",
	SECONDARY_LIGHT = "#f5f0ff",
	SECONDARY_DARK = "#c8b8e6",
	SECONDARY_BG = "#2a1a2e",

	SUCCESS = "#e0fdcd",    -- 成功色 - 绿色
	SUCCESS_LIGHT = "#f0fde8", -- 浅成功色
	SUCCESS_DARK = "#c8e6b8", -- 深成功色
	SUCCESS_BG = "#1a2e1a", -- 成功色背景

	WARNING = "#fefed3",    -- 警告色 - 黄色
	WARNING_LIGHT = "#fffef0", -- 浅警告色
	WARNING_DARK = "#f5f4c0", -- 深警告色
	WARNING_BG = "#2e2a1a", -- 警告色背景

	ERROR = "#fcc7c6",      -- 错误色 - 红色
	ERROR_LIGHT = "#fff0f0", -- 浅错误色
	ERROR_DARK = "#f0a8a8", -- 深错误色
	ERROR_BG = "#2e1a1a",   -- 错误色背景

	INFO = "#c8ffee",       -- 信息色 - 青色
	INFO_LIGHT = "#f0fffe", -- 浅信息色
	INFO_DARK = "#a8e6e0",  -- 深信息色
	INFO_BG = "#1a2e2e",    -- 信息色背景

	-- 特殊用途颜色
	SELECTION = "#2d3748",    -- 选择背景色
	SELECTION_LIGHT = "#3a4758", -- 浅选择背景色
	COMMENT = "#999999",      -- 注释颜色
	COMMENT_LIGHT = "#cccccc", -- 浅注释颜色
	COMMENT_DARK = "#666666", -- 深注释颜色

	-- 文本颜色映射
	STRING = "#e0fdcd",    -- 字符串颜色
	STRING_LIGHT = "#f0fde8", -- 浅字符串颜色
	STRING_DARK = "#c8e6b8", -- 深字符串颜色

	-- 关键字使用紫色系，避免粉色使用过多
	KEYWORD = "#dbdbff",
	KEYWORD_LIGHT = "#f5f0ff",
	KEYWORD_DARK = "#b0a0d4",

	FUNCTION = "#c8ebf6",    -- 函数颜色
	FUNCTION_LIGHT = "#e6f4ff", -- 浅函数颜色
	FUNCTION_DARK = "#9dd4f0", -- 深函数颜色

	TYPE = "#fefed3",        -- 类型颜色
	TYPE_LIGHT = "#fffef0",  -- 浅类型颜色
	TYPE_DARK = "#f5f4c0",   -- 深类型颜色

	VARIABLE = "#ffe2ce",    -- 变量颜色
	VARIABLE_LIGHT = "#fff5f0", -- 浅变量颜色
	VARIABLE_DARK = "#f0c8a8", -- 深变量颜色
}

return M
