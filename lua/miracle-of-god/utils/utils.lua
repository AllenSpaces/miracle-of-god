local M = {}
local colors = require("miracle-of-god.utils.color").COLORS

local function HL(syntaxName, options)
	vim.api.nvim_set_hl(0, syntaxName, options)
end

function M.setHighLight()
	-- basic
	HL("MyCursorHighlight", { fg = colors.RED, bg = colors.BG })
	HL("Normal", { fg = colors.FG, bg = colors.BG })
	HL("Comment", { fg = colors.GRAY, italic = true })
	HL("CursorLine", { bg = "" })
	HL("CursorColumn", { bg = "" })
	HL("LineNr", { fg = colors.GRAY })
	HL("CursorLineNr", { fg = colors.RED })
	HL("String", { fg = colors.RED })
	HL("Number", { fg = colors.BROWN })
	HL("Boolean", { fg = colors.GREEN })
	HL("Function", { fg = colors.BLUE })
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
	HL("@variable", { fg = colors.ORAK, italic = true })
	HL("Search", { fg = colors.BG, bg = colors.YELLOW })
	HL("IncSearch", { fg = colors.BG, bg = colors.YELLOW })
	HL("DiagnosticError", { fg = colors.RED })
	HL("DiagnosticWarn", { fg = colors.YELLOW })
	HL("DiagnosticInfo", { fg = colors.BLUE })
	HL("DiagnosticHint", { fg = colors.ORANGE })
	HL("Directory", { fg = colors.BLUE })
	HL("NotifyERRORBorder", { fg = colors.RED })
	HL("NotifyERRORTitle", { fg = colors.RED })
	HL("NotifyERRORBody", { fg = colors.RED })
	HL("NotifyERRORIcon", { fg = colors.RED })
	HL("NotifyWARNBorder", { fg = colors.YELLOW })
	HL("NotifyWARNTitle", { fg = colors.YELLOW })
	HL("NotifyWARNBody", { fg = colors.YELLOW })
	HL("NotifyWARNIcon", { fg = colors.YELLOW })
	HL("NotifyINFOBorder", { fg = colors.BLUE })
	HL("NotifyINFOTitle", { fg = colors.BLUE })
	HL("NotifyINFOBody", { fg = colors.BLUE })
	HL("NotifyINFOIcon", { fg = colors.BLUE })
	HL("markdownH1", { fg = colors.RED, bold = true })
	HL("markdownH2", { fg = colors.ORANGE, bold = true })
	HL("markdownH3", { fg = colors.YELLOW, bold = true })
	HL("markdownH4", { fg = colors.GREEN, bold = true })
	HL("markdownH5", { fg = colors.PINK, bold = true })
	HL("markdownH6", { fg = colors.PURPLE, bold = true })
	HL("DiffAdd", { fg = colors.GREEN })
	HL("DiffChange", { fg = colors.BROWN })
	HL("DiffDelete", { fg = colors.RED })
	-- JavaScript
	HL("@function.javascript", { link = "Function" })
	HL("@variable.javascript", { link = "Identifier" })
	HL("@keyword.javascript", { link = "Keyword" })
	HL("@string.javascript", { link = "String" })
	HL("@number.javascript", { link = "Number" })
	HL("@comment.javascript", { link = "Comment" })

	-- TypeScript
	HL("@function.typescript", { link = "Function" })
	HL("@variable.typescript", { link = "Identifier" })
	HL("@keyword.typescript", { link = "Keyword" })
	HL("@string.typescript", { link = "String" })
	HL("@number.typescript", { link = "Number" })
	HL("@comment.typescript", { link = "Comment" })

	-- Java
	HL("@function.java", { link = "Function" })
	HL("@variable.java", { link = "Identifier" })
	HL("@keyword.java", { link = "Keyword" })
	HL("@string.java", { link = "String" })
	HL("@number.java", { link = "Number" })
	HL("@comment.java", { link = "Comment" })

	-- Python
	HL("@function.python", { link = "Function" })
	HL("@variable.python", { link = "Identifier" })
	HL("@keyword.python", { link = "Keyword" })
	HL("@string.python", { link = "String" })
	HL("@number.python", { link = "Number" })
	HL("@comment.python", { link = "Comment" })

	-- JSON
	HL("@string.json", { link = "String" })
	HL("@number.json", { link = "Number" })
	HL("@keyword.json", { link = "Keyword" })

	-- C
	HL("@function.c", { link = "Function" })
	HL("@variable.c", { link = "Identifier" })
	HL("@keyword.c", { link = "Keyword" })
	HL("@string.c", { link = "String" })
	HL("@number.c", { link = "Number" })
	HL("@comment.c", { link = "Comment" })

	-- C++
	HL("@function.cpp", { link = "Function" })
	HL("@variable.cpp", { link = "Identifier" })
	HL("@keyword.cpp", { link = "Keyword" })
	HL("@string.cpp", { link = "String" })
	HL("@number.cpp", { link = "Number" })
	HL("@comment.cpp", { link = "Comment" })

	-- C#
	HL("@function.cs", { link = "Function" })
	HL("@variable.cs", { link = "Identifier" })
	HL("@keyword.cs", { link = "Keyword" })
	HL("@string.cs", { link = "String" })
	HL("@number.cs", { link = "Number" })
	HL("@comment.cs", { link = "Comment" })

	-- JSX
	HL("@tag.jsx", { link = "Tag" })
	HL("@attribute.jsx", { link = "Identifier" })
	HL("@string.jsx", { link = "String" })
	HL("@number.jsx", { link = "Number" })
	HL("@comment.jsx", { link = "Comment" })

	-- TSX
	HL("@tag.tsx", { link = "Tag" })
	HL("@attribute.tsx", { link = "Identifier" })
	HL("@string.tsx", { link = "String" })
	HL("@number.tsx", { link = "Number" })
	HL("@comment.tsx", { link = "Comment" })

	-- HTML
	HL("@tag.html", { link = "Tag" })
	HL("@attribute.html", { link = "Identifier" })
	HL("@string.html", { link = "String" })
	HL("@number.html", { link = "Number" })
	HL("@comment.html", { link = "Comment" })

	-- CSS
	HL("@property.css", { link = "Identifier" })
	HL("@value.css", { link = "String" })
	HL("@keyword.css", { link = "Keyword" })
	HL("@comment.css", { link = "Comment" })

	-- Vue
	HL("@tag.vue", { link = "Tag" })
	HL("@attribute.vue", { link = "Identifier" })
	HL("@string.vue", { link = "String" })
	HL("@number.vue", { link = "Number" })
	HL("@comment.vue", { link = "Comment" })

	-- Dart
	HL("@function.dart", { link = "Function" })
	HL("@variable.dart", { link = "Identifier" })
	HL("@keyword.dart", { link = "Keyword" })
	HL("@string.dart", { link = "String" })
	HL("@number.dart", { link = "Number" })
	HL("@comment.dart", { link = "Comment" })

	-- SCSS
	HL("@property.scss", { link = "Identifier" })
	HL("@value.scss", { link = "String" })
	HL("@keyword.scss", { link = "Keyword" })
	HL("@comment.scss", { link = "Comment" })

	-- LESS
	HL("@property.less", { link = "Identifier" })
	HL("@value.less", { link = "String" })
	HL("@keyword.less", { link = "Keyword" })
	HL("@comment.less", { link = "Comment" })
end

return M
