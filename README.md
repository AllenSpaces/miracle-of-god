# Miracle of God - Neovim 主题

一个现代、美观且功能完整的 Neovim 主题，专为开发者设计。

## 特性

- 🎨 **现代配色方案** - 基于精心挑选的颜色，提供舒适的视觉体验
- 🔍 **完整的语法高亮** - 支持所有主流编程语言和文件类型
- 🚀 **LSP 支持** - 完整的 LSP 诊断和语义高亮
- 📁 **文件浏览器** - 美观的 NvimTree 支持
- 🔧 **插件集成** - 支持 Telescope、Cmp、GitSigns 等热门插件
- 📝 **Markdown 支持** - 完整的 Markdown 语法高亮
- 🎯 **状态栏** - 美观的 Lualine 主题

## 安装

使用你喜欢的插件管理器：

### Packer
```lua
use {
  'your-username/miracle-of-god',
  config = function()
    require('miracle-of-god').setup()
  end
}
```

### Lazy.nvim
```lua
{
  'your-username/miracle-of-god',
  config = function()
    require('miracle-of-god').setup()
  end
}
```

## 配置

```lua
require('miracle-of-god').setup({
  dark = true, -- 默认为暗色主题
})
```

## 颜色方案

主题使用了一套精心设计的颜色方案，基于您原有的颜色进行了深度扩展：

### 基础颜色
- **前景色**: `#c6dcfc` - 主要文本颜色
- **背景色**: `#1e1e1e` - 主背景色
- **默认色**: `#b4ceff` - 默认文本色

### 主色调系
- **蓝色系**: `#c8ebf6` (主) → `#e6f4ff` (浅) → `#9dd4f0` (深) → `#7bb8e0` (更深)
- **绿色系**: `#e0fdcd` (主) → `#f0fde8` (浅) → `#c8e6b8` (深) → `#b0d4a0` (更深)
- **黄色系**: `#fefed3` (主) → `#fffef0` (浅) → `#f5f4c0` (深) → `#e8e6a0` (更深)
- **青色系**: `#c8ffee` (主) → `#f0fffe` (浅) → `#a8e6e0` (深) → `#90d4d0` (更深)
- **红色系**: `#fcc7c6` (主) → `#fff0f0` (浅) → `#f0a8a8` (深) → `#e09090` (更深)
- **紫色系**: `#dbdbff` (主) → `#f5f0ff` (浅) → `#c8b8e6` (深) → `#b0a0d4` (更深)
- **橙色系**: `#ffe2ce` (主) → `#fff5f0` (浅) → `#f0c8a8` (深) → `#e0b090` (更深)
- **粉色系**: `#ffd7fd` (主) → `#fff0f5` (浅) → `#f0a8c8` (深) → `#e090b0` (更深)
- **棕色系**: `#ffd79a` (主) → `#fff5e6` (浅) → `#e6c8a0` (深) → `#d4b080` (更深)

### 语义化颜色
- **主色调**: 蓝色 - 用于重要元素和状态指示
- **次要色**: 橙色 - 用于强调和辅助信息
- **成功色**: 绿色 - 用于成功状态和 Git 添加
- **警告色**: 黄色 - 用于警告和注意事项
- **错误色**: 红色 - 用于错误和删除操作
- **信息色**: 青色 - 用于信息提示和链接

## 支持的插件

- LSP (nvim-lspconfig)
- Telescope
- Cmp (nvim-cmp)
- GitSigns
- NvimTree
- Hop
- Which-key
- Indent-blankline
- Notify

## 开发

主题采用模块化设计，易于扩展和维护：

- `colors/` - 颜色定义
- `lua/miracle-of-god/utils/` - 工具函数
- `lua/miracle-of-god/lualine/` - Lualine 主题

## 许可证

MIT License
