-- luacheck: globals vim
---@diagnostic disable: undefined-global
local vim = rawget(_G, "vim")
local M = {}
local colors = require("miracle-of-god.utils.color").COLORS

local function HL(syntaxName, options)
	-- 统一将所有高亮背景设为透明
	options = options or {}
	options.bg = "NONE"
	if vim and vim.api and vim.api.nvim_set_hl then
		vim.api.nvim_set_hl(0, syntaxName, options)
	end
end

function M.setHighLight()
	-- ===========================================
	-- 基础界面元素
	-- ===========================================
	HL("Normal", { fg = colors.DEFAULT, bg = colors.BG })
	HL("NormalFloat", { fg = colors.DEFAULT, bg = colors.BLUE_BG })
	HL("NormalNC", { fg = colors.GRAY_LIGHT, bg = colors.BG })

	-- 光标相关
	HL("Cursor", { fg = colors.BG, bg = colors.PRIMARY })
	HL("CursorLine", { bg = colors.SELECTION })
	HL("CursorColumn", { bg = colors.SELECTION })
	HL("CursorLineNr", { fg = colors.PRIMARY, bold = true })
	HL("LineNr", { fg = colors.GRAY })
	HL("LineNrAbove", { fg = colors.GRAY_DARK })
	HL("LineNrBelow", { fg = colors.GRAY_DARK })

	-- 状态栏
	HL("StatusLine", { fg = colors.DEFAULT, bg = colors.SELECTION })
	HL("StatusLineNC", { fg = colors.GRAY, bg = colors.SELECTION })
	HL("StatusLineTerm", { fg = colors.DEFAULT, bg = colors.SELECTION })
	HL("StatusLineTermNC", { fg = colors.GRAY, bg = colors.SELECTION })

	-- 窗口分割
	HL("VertSplit", { fg = colors.GRAY_DARK })
	HL("WinSeparator", { fg = colors.GRAY_DARK })

	-- ===========================================
	-- 语法高亮 - 基础语法
	-- ===========================================
	HL("Comment", { fg = colors.COMMENT, italic = true })
	HL("String", { fg = colors.STRING })
	HL("Character", { fg = colors.STRING_LIGHT })
	HL("Number", { fg = colors.PURPLE })
	HL("Boolean", { fg = colors.RED, italic = true })
	HL("Float", { fg = colors.PURPLE_DARK })
	HL("Identifier", { fg = colors.VARIABLE })
	HL("Function", { fg = colors.FUNCTION })
	HL("Statement", { fg = colors.KEYWORD })
	HL("Conditional", { fg = colors.KEYWORD_DARK })
	HL("Repeat", { fg = colors.KEYWORD })
	HL("Label", { fg = colors.KEYWORD_LIGHT })
	HL("Operator", { fg = colors.PRIMARY })
	HL("Keyword", { fg = colors.KEYWORD })
	HL("Exception", { fg = colors.ERROR })
	HL("PreProc", { fg = colors.PINK })
	HL("Include", { fg = colors.PINK_LIGHT })
	HL("Define", { fg = colors.PINK })
	HL("Macro", { fg = colors.PINK_DARK })
	HL("PreCondit", { fg = colors.PINK })
	HL("Type", { fg = colors.TYPE })
	HL("StorageClass", { fg = colors.KEYWORD })
	HL("Structure", { fg = colors.TYPE_DARK })
	HL("Typedef", { fg = colors.TYPE_LIGHT })
	HL("Special", { fg = colors.CYAN })
	HL("SpecialChar", { fg = colors.CYAN_LIGHT })
	HL("Tag", { fg = colors.GREEN })
	HL("Delimiter", { fg = colors.DEFAULT })
	HL("SpecialComment", { fg = colors.COMMENT_LIGHT, italic = true })
	HL("Debug", { fg = colors.ERROR })
	HL("Underlined", { fg = colors.PRIMARY, underline = true })
	HL("Ignore", { fg = colors.GRAY })
	HL("Error", { fg = colors.ERROR, bold = true })
	HL("Todo", { fg = colors.WARNING, bold = true })

	-- ===========================================
	-- Tree-sitter 语法高亮
	-- ===========================================
	-- 函数和方法
	HL("@function", { fg = colors.FUNCTION, bold = true })
	HL("@function.builtin", { fg = colors.FUNCTION_LIGHT, italic = true })
	HL("@function.call", { fg = colors.FUNCTION_DARK })
	HL("@method", { fg = colors.FUNCTION })
	HL("@method.call", { fg = colors.FUNCTION_DARK })
	HL("@constructor", { fg = colors.FUNCTION, bold = true })

	-- 变量
	HL("@variable", { fg = colors.VARIABLE })
	HL("@variable.builtin", { fg = colors.PRIMARY, italic = true })
	HL("@variable.parameter", { fg = colors.PURPLE })
	HL("@variable.member", { fg = colors.VARIABLE_DARK })

	-- 关键字
	HL("@keyword", { fg = colors.KEYWORD })
	HL("@keyword.function", { fg = colors.KEYWORD_DARK })
	HL("@keyword.operator", { fg = colors.KEYWORD })
	HL("@keyword.return", { fg = colors.KEYWORD_LIGHT })
	HL("@keyword.import", { fg = colors.KEYWORD })
	HL("@keyword.export", { fg = colors.KEYWORD })
	HL("@keyword.storage", { fg = colors.KEYWORD_DARK })

	-- 类型
	HL("@type", { fg = colors.TYPE, italic = true })
	HL("@type.builtin", { fg = colors.TYPE, bold = true })
	HL("@type.definition", { fg = colors.TYPE_DARK })

	-- 字符串和文本
	HL("@string", { fg = colors.STRING })
	HL("@string.regex", { fg = colors.CYAN })
	HL("@string.escape", { fg = colors.PURPLE })
	HL("@string.special", { fg = colors.CYAN_LIGHT })
	HL("@text", { fg = colors.DEFAULT })
	HL("@text.strong", { fg = colors.DEFAULT, bold = true })
	HL("@text.emphasis", { fg = colors.DEFAULT, italic = true })
	HL("@text.underline", { fg = colors.DEFAULT, underline = true })
	HL("@text.strike", { fg = colors.DEFAULT, strikethrough = true })
	HL("@text.title", { fg = colors.PRIMARY, bold = true })
	HL("@text.literal", { fg = colors.STRING })
	HL("@text.uri", { fg = colors.PRIMARY, underline = true })
	HL("@text.math", { fg = colors.CYAN })
	HL("@text.reference", { fg = colors.PRIMARY })

	-- 数字和常量
	HL("@number", { fg = colors.PURPLE })
	HL("@number.float", { fg = colors.PURPLE_DARK })
	HL("@boolean", { fg = colors.RED, italic = true })
	HL("@constant", { fg = colors.YELLOW })
	HL("@constant.builtin", { fg = colors.YELLOW, bold = true })
	HL("@constant.macro", { fg = colors.YELLOW_DARK })

	-- 操作符和标点
	HL("@operator", { fg = colors.PRIMARY })
	HL("@punctuation", { fg = colors.DEFAULT })
	HL("@punctuation.delimiter", { fg = colors.DEFAULT })
	HL("@punctuation.bracket", { fg = colors.DEFAULT })
	HL("@punctuation.special", { fg = colors.DEFAULT })

	-- 字典表 key 值
	HL("@field", { fg = colors.CYAN })
	HL("@property", { fg = colors.CYAN })
	HL("@key", { fg = colors.CYAN })
	HL("@attribute", { fg = colors.CYAN })

	-- 注释
	HL("@comment", { fg = colors.COMMENT, italic = true })
	HL("@comment.documentation", { fg = colors.COMMENT_LIGHT, italic = true })

	-- 错误和警告
	HL("@error", { fg = colors.ERROR })
	HL("@warning", { fg = colors.WARNING })
	HL("@note", { fg = colors.INFO })
	HL("@hint", { fg = colors.INFO })

	-- ===========================================
	-- 搜索和选择
	-- ===========================================
	HL("Search", { fg = colors.BG, bg = colors.WARNING })
	HL("IncSearch", { fg = colors.BG, bg = colors.PRIMARY })
	HL("CurSearch", { fg = colors.BG, bg = colors.PRIMARY_DARK })
	HL("Substitute", { fg = colors.BG, bg = colors.PURPLE })
	HL("Visual", { bg = colors.SELECTION })
	HL("VisualNOS", { bg = colors.SELECTION_LIGHT })
	HL("VisualMode", { bg = colors.SELECTION })

	-- ===========================================
	-- LSP 诊断
	-- ===========================================
	HL("DiagnosticError", { fg = colors.ERROR })
	HL("DiagnosticWarn", { fg = colors.WARNING })
	HL("DiagnosticInfo", { fg = colors.INFO })
	HL("DiagnosticHint", { fg = colors.PRIMARY })
	HL("DiagnosticOk", { fg = colors.SUCCESS })

	-- LSP 诊断下划线
	HL("DiagnosticUnderlineError", { undercurl = true, sp = colors.ERROR })
	HL("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.WARNING })
	HL("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.INFO })
	HL("DiagnosticUnderlineHint", { undercurl = true, sp = colors.PRIMARY })
	HL("DiagnosticUnderlineOk", { undercurl = true, sp = colors.SUCCESS })

	-- LSP 虚拟文本
	HL("DiagnosticVirtualTextError", { fg = colors.ERROR })
	HL("DiagnosticVirtualTextWarn", { fg = colors.WARNING })
	HL("DiagnosticVirtualTextInfo", { fg = colors.INFO })
	HL("DiagnosticVirtualTextHint", { fg = colors.PRIMARY })
	HL("DiagnosticVirtualTextOk", { fg = colors.SUCCESS })

	-- 额外的 LSP 相关高亮：统一确保背景透明
	HL("LspReferenceText", { underline = true, bold = true })
	HL("LspReferenceRead", { underline = true, bold = true })
	HL("LspReferenceWrite", { underline = true, bold = true })
	HL("LspSignatureActiveParameter", { fg = colors.PRIMARY, bold = true })
	HL("LspCodeLens", { fg = colors.GRAY })
	HL("LspCodeLensSeparator", { fg = colors.GRAY_DARK })
	HL("LspInlayHint", { fg = colors.GRAY })
	HL("DiagnosticFloatingError", { fg = colors.ERROR })
	HL("DiagnosticFloatingWarn", { fg = colors.WARNING })
	HL("DiagnosticFloatingInfo", { fg = colors.INFO })
	HL("DiagnosticFloatingHint", { fg = colors.PRIMARY })
	HL("DiagnosticSignError", { fg = colors.ERROR })
	HL("DiagnosticSignWarn", { fg = colors.WARNING })
	HL("DiagnosticSignInfo", { fg = colors.INFO })
	HL("DiagnosticSignHint", { fg = colors.PRIMARY })

	-- ===========================================
	-- 通知系统
	-- ===========================================
	HL("NotifyERRORBorder", { fg = colors.ERROR })
	HL("NotifyERRORTitle", { fg = colors.ERROR, bold = true })
	HL("NotifyERRORBody", { fg = colors.ERROR_LIGHT })
	HL("NotifyERRORIcon", { fg = colors.ERROR })

	HL("NotifyWARNBorder", { fg = colors.WARNING })
	HL("NotifyWARNTitle", { fg = colors.WARNING, bold = true })
	HL("NotifyWARNBody", { fg = colors.WARNING_LIGHT })
	HL("NotifyWARNIcon", { fg = colors.WARNING })

	HL("NotifyINFOBorder", { fg = colors.INFO })
	HL("NotifyINFOTitle", { fg = colors.INFO, bold = true })
	HL("NotifyINFOBody", { fg = colors.INFO_LIGHT })
	HL("NotifyINFOIcon", { fg = colors.INFO })

	HL("NotifyDEBUGBorder", { fg = colors.GRAY })
	HL("NotifyDEBUGTitle", { fg = colors.GRAY, bold = true })
	HL("NotifyDEBUGBody", { fg = colors.GRAY_LIGHT })
	HL("NotifyDEBUGIcon", { fg = colors.GRAY })

	HL("NotifyTRACEBorder", { fg = colors.PURPLE })
	HL("NotifyTRACETitle", { fg = colors.PURPLE, bold = true })
	HL("NotifyTRACEBody", { fg = colors.PURPLE_LIGHT })
	HL("NotifyTRACEIcon", { fg = colors.PURPLE })

	-- ===========================================
	-- Markdown 支持
	-- ===========================================
	HL("@markup.heading", { fg = colors.PRIMARY, bold = true })
	HL("@markup.heading.1", { fg = colors.PRIMARY, bold = true })
	HL("@markup.heading.2", { fg = colors.PURPLE, bold = true })
	HL("@markup.heading.3", { fg = colors.WARNING, bold = true })
	HL("@markup.heading.4", { fg = colors.SUCCESS, bold = true })
	HL("@markup.heading.5", { fg = colors.INFO, bold = true })
	HL("@markup.heading.6", { fg = colors.ORANGE, bold = true })

	HL("@markup.strong", { fg = colors.DEFAULT, bold = true })
	HL("@markup.italic", { fg = colors.DEFAULT, italic = true })
	HL("@markup.strikethrough", { fg = colors.DEFAULT, strikethrough = true })
	HL("@markup.underline", { fg = colors.DEFAULT, underline = true })
	HL("@markup.link", { fg = colors.PRIMARY, underline = true })
	HL("@markup.link.url", { fg = colors.PRIMARY_LIGHT, underline = true })
	HL("@markup.link.label", { fg = colors.PRIMARY })

	HL("@markup.list", { fg = colors.DEFAULT })
	HL("@markup.list.unchecked", { fg = colors.ERROR })
	HL("@markup.list.checked", { fg = colors.SUCCESS })
	HL("@markup.quote", { fg = colors.GRAY, italic = true })
	HL("@markup.raw", { fg = colors.STRING })
	HL("@markup.raw.delimiter", { fg = colors.GRAY_DARK })

	-- ===========================================
	-- Git 相关
	-- ===========================================
	HL("DiffAdd", { fg = colors.SUCCESS })
	HL("DiffChange", { fg = colors.WARNING })
	HL("DiffDelete", { fg = colors.ERROR })
	HL("DiffText", { fg = colors.INFO })

	HL("GitSignsAdd", { fg = colors.SUCCESS })
	HL("GitSignsChange", { fg = colors.WARNING })
	HL("GitSignsDelete", { fg = colors.ERROR })
	HL("GitSignsAddLn", { fg = colors.SUCCESS, bg = colors.SUCCESS_BG })
	HL("GitSignsChangeLn", { fg = colors.WARNING, bg = colors.WARNING_BG })
	HL("GitSignsDeleteLn", { fg = colors.ERROR, bg = colors.ERROR_BG })

	-- ===========================================
	-- 文件浏览器
	-- ===========================================
	HL("Directory", { fg = colors.PRIMARY })
	HL("NvimTreeFolderName", { fg = colors.PRIMARY })
	HL("NvimTreeFolderIcon", { fg = colors.PRIMARY })
	HL("NvimTreeOpenedFolderName", { fg = colors.PRIMARY_LIGHT, bold = true })
	HL("NvimTreeClosedFolderName", { fg = colors.PRIMARY_DARK })
	HL("NvimTreeEmptyFolderName", { fg = colors.GRAY })
	HL("NvimTreeIndentMarker", { fg = colors.GRAY_DARK })
	HL("NvimTreeGitDirty", { fg = colors.WARNING })
	HL("NvimTreeGitStaged", { fg = colors.SUCCESS })
	HL("NvimTreeGitMerge", { fg = colors.INFO })
	HL("NvimTreeGitRenamed", { fg = colors.PURPLE })
	HL("NvimTreeGitNew", { fg = colors.SUCCESS })
	HL("NvimTreeGitDeleted", { fg = colors.ERROR })
	HL("NvimTreeSpecialFile", { fg = colors.CYAN })
	HL("NvimTreeImageFile", { fg = colors.PINK })
	HL("NvimTreeExecFile", { fg = colors.SUCCESS })

	-- ===========================================
	-- 跳转和导航
	-- ===========================================
	HL("HopNextKey", { fg = colors.ERROR, bold = true })
	HL("HopNextKey1", { fg = colors.PRIMARY, bold = true })
	HL("HopNextKey2", { fg = colors.PURPLE, bold = true })
	HL("HopUnmatched", { fg = colors.GRAY_DARK })
	HL("HopCursor", { fg = colors.BG, bg = colors.PRIMARY })

	-- ===========================================
	-- 补全系统
	-- ===========================================
	HL("CmpItemAbbr", { fg = colors.DEFAULT })
	HL("CmpItemAbbrDeprecated", { fg = colors.GRAY, strikethrough = true })
	HL("CmpItemAbbrMatch", { fg = colors.PRIMARY, bold = true })
	HL("CmpItemAbbrMatchFuzzy", { fg = colors.PRIMARY_LIGHT, bold = true })
	HL("CmpItemKind", { fg = colors.PURPLE })
	HL("CmpItemKindText", { fg = colors.DEFAULT })
	HL("CmpItemKindSnippet", { fg = colors.PINK })
	HL("CmpItemKindMethod", { fg = colors.FUNCTION })
	HL("CmpItemKindFunction", { fg = colors.FUNCTION })
	HL("CmpItemKindConstructor", { fg = colors.FUNCTION, bold = true })
	HL("CmpItemKindField", { fg = colors.VARIABLE })
	HL("CmpItemKindVariable", { fg = colors.VARIABLE })
	HL("CmpItemKindClass", { fg = colors.TYPE, bold = true })
	HL("CmpItemKindInterface", { fg = colors.TYPE, italic = true })
	HL("CmpItemKindModule", { fg = colors.PRIMARY })
	HL("CmpItemKindProperty", { fg = colors.VARIABLE })
	HL("CmpItemKindUnit", { fg = colors.PURPLE })
	HL("CmpItemKindValue", { fg = colors.YELLOW })
	HL("CmpItemKindEnum", { fg = colors.TYPE })
	HL("CmpItemKindKeyword", { fg = colors.KEYWORD })
	HL("CmpItemKindFile", { fg = colors.PRIMARY })
	HL("CmpItemKindReference", { fg = colors.PRIMARY })
	HL("CmpItemKindColor", { fg = colors.CYAN })
	HL("CmpItemKindFolder", { fg = colors.PRIMARY })
	HL("CmpItemKindEnumMember", { fg = colors.TYPE })
	HL("CmpItemKindConstant", { fg = colors.YELLOW })
	HL("CmpItemKindStruct", { fg = colors.TYPE })
	HL("CmpItemKindEvent", { fg = colors.PINK })
	HL("CmpItemKindOperator", { fg = colors.PRIMARY })
	HL("CmpItemKindTypeParameter", { fg = colors.TYPE })

	-- 补全菜单
	HL("CmpItemMenu", { fg = colors.GRAY })
	HL("CmpItemMenuDefault", { fg = colors.GRAY_LIGHT })

	-- 补全边框
	HL("CmpBorder", { fg = colors.GRAY_DARK })
	HL("CmpDocBorder", { fg = colors.GRAY_DARK })
	HL("CmpPmenu", { bg = colors.SELECTION })
	HL("CmpPmenuBorder", { fg = colors.GRAY_DARK })
	HL("CmpPmenuSel", { bg = colors.SELECTION_LIGHT })
	HL("CmpPmenuSbar", { bg = colors.SELECTION })
	HL("CmpPmenuThumb", { bg = colors.GRAY })

	-- ===========================================
	-- 其他插件支持
	-- ===========================================
	-- Telescope
	HL("TelescopePromptBorder", { fg = colors.GRAY_DARK })
	HL("TelescopeResultsBorder", { fg = colors.GRAY_DARK })
	HL("TelescopePreviewBorder", { fg = colors.GRAY_DARK })
	HL("TelescopePromptTitle", { fg = colors.PRIMARY, bold = true })
	HL("TelescopeResultsTitle", { fg = colors.PRIMARY, bold = true })
	HL("TelescopePreviewTitle", { fg = colors.PRIMARY, bold = true })
	HL("TelescopeSelection", { bg = colors.SELECTION })
	HL("TelescopeSelectionCaret", { fg = colors.PRIMARY })
	HL("TelescopeMatching", { fg = colors.PRIMARY, bold = true })

	-- Indent guides
	HL("IndentBlanklineChar", { fg = colors.GRAY_DARK })
	HL("IndentBlanklineContextChar", { fg = colors.GRAY })
	HL("IndentBlanklineSpaceChar", { fg = colors.GRAY_DARK })
	HL("IndentBlanklineSpaceCharBlankline", { fg = colors.GRAY_DARK })

	-- Which key
	HL("WhichKey", { fg = colors.PRIMARY })
	HL("WhichKeyGroup", { fg = colors.PURPLE })
	HL("WhichKeySeparator", { fg = colors.GRAY })
	HL("WhichKeyDesc", { fg = colors.DEFAULT })
	HL("WhichKeyFloat", { bg = colors.SELECTION })
	HL("WhichKeyBorder", { fg = colors.GRAY_DARK })

	-- ===========================================
	-- Mason.nvim 支持
	-- ===========================================
	-- Mason 窗口和边框
	HL("MasonNormal", { fg = colors.DEFAULT, bg = "NONE" })
	HL("MasonHeader", { fg = colors.PRIMARY, bg = "NONE", bold = true })
	HL("MasonHeaderSecondary", { fg = colors.PURPLE, bg = "NONE", bold = true })
	HL("MasonHighlight", { fg = colors.PRIMARY, bold = true })
	HL("MasonHighlightBlock", { fg = colors.PRIMARY, bg = "NONE" })
	HL("MasonHighlightBlockSecondary", { fg = colors.PURPLE, bg = "NONE" })

	-- Mason 状态指示
	HL("MasonHighlightSecondary", { fg = colors.PURPLE, bold = true })
	HL("MasonMuted", { fg = colors.GRAY })
	HL("MasonMutedBlock", { fg = colors.GRAY, bg = "NONE" })
	HL("MasonMutedBlockSecondary", { fg = colors.GRAY_DARK, bg = "NONE" })

	-- Mason 安装状态
	HL("MasonInstalling", { fg = colors.INFO, bold = true })
	HL("MasonInstallingBlock", { fg = colors.INFO, bg = "NONE" })
	HL("MasonOutdated", { fg = colors.WARNING, bold = true })
	HL("MasonOutdatedBlock", { fg = colors.WARNING, bg = "NONE" })
	HL("MasonOutdatedBlockSecondary", { fg = colors.WARNING, bg = "NONE" })

	-- Mason 错误状态
	HL("MasonError", { fg = colors.ERROR, bold = true })
	HL("MasonErrorBlock", { fg = colors.ERROR, bg = "NONE" })
	HL("MasonErrorBlockSecondary", { fg = colors.ERROR, bg = "NONE" })

	-- Mason 成功状态
	HL("MasonSuccess", { fg = colors.SUCCESS, bold = true })
	HL("MasonSuccessBlock", { fg = colors.SUCCESS, bg = "NONE" })
	HL("MasonSuccessBlockSecondary", { fg = colors.SUCCESS, bg = "NONE" })

	-- Mason 警告状态
	HL("MasonWarning", { fg = colors.WARNING, bold = true })
	HL("MasonWarningBlock", { fg = colors.WARNING, bg = "NONE" })
	HL("MasonWarningBlockSecondary", { fg = colors.WARNING, bg = "NONE" })

	-- Mason 信息状态
	HL("MasonInfo", { fg = colors.INFO, bold = true })
	HL("MasonInfoBlock", { fg = colors.INFO, bg = "NONE" })
	HL("MasonInfoBlockSecondary", { fg = colors.INFO, bg = "NONE" })

	-- Mason 包状态
	HL("MasonPackageInstalled", { fg = colors.SUCCESS })
	HL("MasonPackageNotInstalled", { fg = colors.GRAY })
	HL("MasonPackageOutdated", { fg = colors.WARNING })
	HL("MasonPackageError", { fg = colors.ERROR })
	HL("MasonPackagePending", { fg = colors.INFO })

	-- Mason 版本信息
	HL("MasonVersion", { fg = colors.GRAY })
	HL("MasonVersionLatest", { fg = colors.SUCCESS })
	HL("MasonVersionOutdated", { fg = colors.WARNING })
	HL("MasonVersionError", { fg = colors.ERROR })

	-- Mason 依赖关系
	HL("MasonDependency", { fg = colors.CYAN })
	HL("MasonDependencyInstalled", { fg = colors.SUCCESS })
	HL("MasonDependencyNotInstalled", { fg = colors.GRAY })
	HL("MasonDependencyOutdated", { fg = colors.WARNING })
	HL("MasonDependencyError", { fg = colors.ERROR })

	-- Mason 配置相关
	HL("MasonConfig", { fg = colors.PURPLE })
	HL("MasonConfigKey", { fg = colors.KEYWORD })
	HL("MasonConfigValue", { fg = colors.STRING })
	HL("MasonConfigComment", { fg = colors.COMMENT, italic = true })

	-- Mason 日志
	HL("MasonLog", { fg = colors.DEFAULT })
	HL("MasonLogInfo", { fg = colors.INFO })
	HL("MasonLogWarn", { fg = colors.WARNING })
	HL("MasonLogError", { fg = colors.ERROR })
	HL("MasonLogSuccess", { fg = colors.SUCCESS })
	HL("MasonLogDebug", { fg = colors.GRAY })

	-- Mason 进度条
	HL("MasonProgress", { fg = colors.PRIMARY })
	HL("MasonProgressBar", { fg = colors.PRIMARY, bg = "NONE" })
	HL("MasonProgressBarSecondary", { fg = colors.PURPLE, bg = "NONE" })
	HL("MasonProgressBarSuccess", { fg = colors.SUCCESS, bg = "NONE" })
	HL("MasonProgressBarWarning", { fg = colors.WARNING, bg = "NONE" })
	HL("MasonProgressBarError", { fg = colors.ERROR, bg = "NONE" })

	-- Mason 分隔符和边框
	HL("MasonSeparator", { fg = colors.GRAY_DARK })
	HL("MasonBorder", { fg = colors.GRAY_DARK })
	HL("MasonBorderPrimary", { fg = colors.PRIMARY })
	HL("MasonBorderSecondary", { fg = colors.PURPLE })
	HL("MasonBorderSuccess", { fg = colors.SUCCESS })
	HL("MasonBorderWarning", { fg = colors.WARNING })
	HL("MasonBorderError", { fg = colors.ERROR })
	HL("MasonBorderInfo", { fg = colors.INFO })

	-- Mason 选择状态
	HL("MasonSelected", { fg = colors.PRIMARY, bold = true })
	HL("MasonSelectedBlock", { fg = colors.PRIMARY, bg = "NONE" })
	HL("MasonSelectedBlockSecondary", { fg = colors.PRIMARY, bg = "NONE" })

	-- Mason 悬停状态
	HL("MasonHover", { fg = colors.DEFAULT, bg = "NONE" })
	HL("MasonHoverBlock", { fg = colors.DEFAULT, bg = "NONE" })

	-- Mason 工具提示
	HL("MasonTooltip", { fg = colors.DEFAULT, bg = "NONE" })
	HL("MasonTooltipBorder", { fg = colors.GRAY_DARK })
	HL("MasonTooltipTitle", { fg = colors.PRIMARY, bold = true })
	HL("MasonTooltipContent", { fg = colors.DEFAULT })
end

return M
