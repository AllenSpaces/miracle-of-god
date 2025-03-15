local M = {}
local colors = require("miracle-of-god.color").COLORS

function HL(syntax, options)
    vim.api.nvim_set_hl(0, syntax, options)
end

function M.setHighLight(config)
   -- 基础高亮组
	 HL("Normal", { fg = colors.FG, bg = colors.BG })
	 HL("Comment", { fg = colors.GRAY, italic = true })
	 HL("CursorLine", { bg = colors.ORANGE })
	 HL("CursorColumn", { bg = colors.ORANGE })
	 HL("LineNr", { fg = colors.GRAY })
	 HL("CursorLineNr", { fg = colors.RED })

	 -- 语法高亮组
	 HL("String", { fg = colors.YELLOW })
	 HL("Number", { fg = colors.RED })
	 HL("Boolean", { fg = colors.ORANGE })
	 HL("Function", { fg = colors.PURPLE })
	 HL("Keyword", { fg = colors.PINK })
	 HL("Operator", { fg = colors.ORANGE })
	 HL("Type", { fg = colors.GREEN })
	 HL("Identifier", { fg = colors.RED })
	 HL("PreProc", { fg = colors.PINK })
	 HL("Special", { fg = colors.ORANGE })
	 HL("Underlined", { fg = colors.GREEN, underline = true })
	 HL("Constant", { fg = colors.BLUE })
	 HL("Label", { fg = colors.BLUE })
	 HL("SpecialKey", { fg = colors.ORANGE })
	 HL("Title", { fg = colors.BLUE })
	 HL("@variable", { fg = colors.ORANGE })
	 HL("jsFunction", { fg = colors.PURPLE })
	 HL("jsVariable", { fg = colors.GREEN })
	 HL("jsThis", { fg = colors.RED })
	 HL("jsClass", { fg = colors.ORANGE })


	 -- 搜索高亮组
	 HL("Search", { fg = colors.BG, bg = colors.YELLOW })
	 HL("IncSearch", { fg = colors.BG, bg = colors.YELLOW })

	 -- 诊断高亮组
	 HL("DiagnosticError", { fg = colors.RED })
	 HL("DiagnosticWarn", { fg = colors.YELLOW })
	 HL("DiagnosticInfo", { fg = colors.BLUE })
	 HL("DiagnosticHint", { fg = colors.ORANGE })

	 -- UI 高亮组
	 HL("Directory", { fg = colors.BLUE })
end

return M    