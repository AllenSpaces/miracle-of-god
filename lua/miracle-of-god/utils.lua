local M = {}
local colors = require("miracle-of-god.color").COLORS

function HL(syntaxName, options)
	vim.api.nvim_set_hl(0, syntaxName, options)
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
	 HL("String", { fg = colors.RED })
	 HL("Number", { fg = colors.BROWN })
	 HL("Boolean", { fg = colors.GREEN })
	 HL("Function", { fg = colors.PURPLE })
	 HL("Keyword", { fg = colors.PINK })
	 HL("Operator", { fg = colors.ORANGE })
	 HL("Type", { fg = colors.GREEN })
	 HL("Identifier", { fg = colors.PURPLE })
	 HL("PreProc", { fg = colors.PINK })
	 HL("Special", { fg = colors.ORANGE })
	 HL("Underlined", { fg = colors.GREEN, underline = true })
	 HL("Constant", { fg = colors.BLUE })
	 HL("Label", { fg = colors.BLUE })
	 HL("SpecialKey", { fg = colors.ORANGE })
	 HL("Title", { fg = colors.BLUE })
	 HL("@variable", { fg = colors.ORANGE })
	 HL("Import", { fg = colors.ORANGE })
	 HL("Export", { fg = colors.RED })
	 HL("Module", { fg = colors.PURPLE })
	 HL("Namespace", { fg = colors.RED })
	 HL("Package", { fg = colors.PURPLE })
	 HL("Use", { fg = colors.GREEN })
	 HL("Include", { fg = colors.PURPLE })
	 HL("Require", { fg = colors.ORANGE })

	 -- JavaScript 高亮组
	 HL("jsFunction", { fg = colors.PURPLE })
	 HL("jsVariable", { fg = colors.RED })
	 HL("jsThis", { fg = colors.GREEN })
	 HL("jsClass", { fg = colors.ORANGE })
	 HL("jsObjectLiteral", { fg = colors.PINK })
	 HL("jsObjectKey", { fg = colors.PINK })
	 HL("jsObjectValue", { fg = colors.PINK })
	 HL("jsObjectProp", { fg = colors.PINK })
	 

	 -- Java 高亮组
	 HL("javaFunction", { fg = colors.PURPLE })
	 HL("javaVariable", { fg = colors.RED })
	 HL("javaThis", { fg = colors.GREEN })
	 HL("javaClass", { fg = colors.ORANGE })
	 HL("javaObjectLiteral", { fg = colors.BROWN })
	 HL("javaObjectKey", { fg = colors.PINK })
	 HL("javaObjectValue", { fg = colors.GREEN })
	 HL("javaObjectProp", { fg = colors.BROWN })

	 -- Dart 高亮组
	 HL("dartFunction", { fg = colors.PURPLE })
	 HL("dartVariable", { fg = colors.RED })
	 HL("dartThis", { fg = colors.GREEN })
	 HL("dartClass", { fg = colors.ORANGE })
	 HL("dartObjectLiteral", { fg = colors.BROWN })
	 HL("dartObjectKey", { fg = colors.PINK })
	 HL("dartObjectValue", { fg = colors.GREEN })
	 HL("dartObjectProp", { fg = colors.BROWN })

	 -- TypeScript 高亮组
	 HL("tsFunction", { fg = colors.PURPLE })
	 HL("tsVariable", { fg = colors.RED })
	 HL("tsThis", { fg = colors.GREEN })
	 HL("tsClass", { fg = colors.ORANGE })
	 HL("tsObjectLiteral", { fg = colors.BROWN })
	 HL("tsObjectKey", { fg = colors.PINK })
	 HL("tsObjectValue", { fg = colors.GREEN })
	 HL("tsObjectProp", { fg = colors.BROWN })

	 -- C 高亮组
	 HL("cFunction", { fg = colors.PURPLE })
	 HL("cVariable", { fg = colors.RED })
	 HL("cThis", { fg = colors.GREEN })
	 HL("cClass", { fg = colors.ORANGE })
	 HL("cObjectLiteral", { fg = colors.BROWN })
	 HL("cObjectKey", { fg = colors.PINK })
	 HL("cObjectValue", { fg = colors.GREEN })
	 HL("cObjectProp", { fg = colors.BROWN })

	 -- C++ 高亮组
	 HL("cppFunction", { fg = colors.PURPLE })
	 HL("cppVariable", { fg = colors.RED })
	 HL("cppThis", { fg = colors.GREEN })
	 HL("cppClass", { fg = colors.ORANGE })
	 HL("cppObjectLiteral", { fg = colors.BROWN })
	 HL("cppObjectKey", { fg = colors.PINK })
	 HL("cppObjectValue", { fg = colors.GREEN })
	 HL("cppObjectProp", { fg = colors.BROWN })

	 -- C# 高亮组
	 HL("csFunction", { fg = colors.PURPLE })
	 HL("csVariable", { fg = colors.RED })
	 HL("csThis", { fg = colors.GREEN })
	 HL("csClass", { fg = colors.ORANGE })
	 HL("csObjectLiteral", { fg = colors.BROWN })
	 HL("csObjectKey", { fg = colors.PINK })
	 HL("csObjectValue", { fg = colors.GREEN })
	 HL("csObjectProp", { fg = colors.BROWN })

	 -- Python 高亮组
	 HL("pythonFunction", { fg = colors.PURPLE })
	 HL("pythonVariable", { fg = colors.RED })
	 HL("pythonThis", { fg = colors.GREEN })
	 HL("pythonClass", { fg = colors.ORANGE })
	 HL("pythonObjectLiteral", { fg = colors.BROWN })
	 HL("pythonObjectKey", { fg = colors.PINK })
	 HL("pythonObjectValue", { fg = colors.GREEN })
	 HL("pythonObjectProp", { fg = colors.BROWN })

	 -- Vue 高亮组
	 HL("vueFunction", { fg = colors.PURPLE })
	 HL("vueVariable", { fg = colors.RED })
	 HL("vueThis", { fg = colors.GREEN })
	 HL("vueClass", { fg = colors.ORANGE })
	 HL("vueObjectLiteral", { fg = colors.BROWN })
	 HL("vueObjectKey", { fg = colors.PINK })
	 HL("vueObjectValue", { fg = colors.GREEN })
	 HL("vueObjectProp", { fg = colors.BROWN })

	-- HTML 高亮组
	HL("htmlTag", { fg = colors.RED })
	HL("htmlEndTag", { fg = colors.RED })
	HL("htmlTagName", { fg = colors.BROWN })
	HL("htmlArg", { fg = colors.ORANGE })
	HL("htmlScriptTag", { fg = colors.PURPLE })
	HL("htmlSpecialTagName", { fg = colors.PINK })
	HL("htmlLink", { fg = colors.GREEN, underline = true })
	HL("htmlBold", { fg = colors.YELLOW, bold = true })
	HL("htmlItalic", { fg = colors.PINK, italic = true })

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