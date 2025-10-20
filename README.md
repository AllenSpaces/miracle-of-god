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

主题使用了一套精心设计的颜色方案：

- **主色调**: 蓝色 (#7dcfff) - 用于重要元素
- **次要色**: 橙色 (#ff9e64) - 用于强调
- **成功色**: 绿色 (#a9ff68) - 用于成功状态
- **警告色**: 黄色 (#ffd93d) - 用于警告
- **错误色**: 红色 (#ff6b6b) - 用于错误
- **信息色**: 青色 (#4fc3f7) - 用于信息提示

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
