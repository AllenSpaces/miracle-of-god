# Mason.nvim 配色说明

## 配色方案

本主题为 Mason.nvim 提供了完整的配色支持，使用您原有的颜色系统进行设计。

### 主要配色

#### 状态颜色
- **成功状态**: `#e0fdcd` (绿色) - 表示安装成功、操作完成
- **警告状态**: `#fefed3` (黄色) - 表示有更新、需要注意
- **错误状态**: `#fcc7c6` (红色) - 表示安装失败、操作错误
- **信息状态**: `#c8ffee` (青色) - 表示一般信息、进度提示
- **主色调**: `#c8ebf6` (蓝色) - 表示选中、高亮状态

#### 界面元素
- **标题栏**: 蓝色背景 + 白色文字
- **包列表**: 清晰的层次结构
- **依赖关系**: 青色显示，状态用不同颜色区分
- **配置界面**: 紫色主题，关键字和值分别着色

### 高亮组说明

#### 基础界面
- `MasonNormal`: 正常文本颜色
- `MasonHeader`: 标题栏样式
- `MasonHighlight`: 高亮元素

#### 状态指示
- `MasonSuccess`: 成功状态
- `MasonWarning`: 警告状态  
- `MasonError`: 错误状态
- `MasonInfo`: 信息状态

#### 包状态
- `MasonPackageInstalled`: 已安装包
- `MasonPackageNotInstalled`: 未安装包
- `MasonPackageOutdated`: 过时包
- `MasonPackageError`: 错误包

#### 进度和日志
- `MasonProgressBar`: 进度条样式
- `MasonLogInfo`: 信息日志
- `MasonLogWarn`: 警告日志
- `MasonLogError`: 错误日志

### 使用效果

1. **清晰的视觉层次**: 不同状态用不同颜色区分
2. **一致的设计语言**: 与主题整体风格保持一致
3. **良好的可读性**: 确保颜色对比度适中
4. **直观的状态反馈**: 颜色直接反映操作状态

### 自定义配置

如果您想调整 Mason 的配色，可以修改 `lua/miracle-of-god/utils/utils.lua` 文件中的 Mason 相关高亮组。

```lua
-- 例如，修改成功状态的颜色
HL("MasonSuccess", { fg = colors.SUCCESS, bold = true })
HL("MasonSuccessBlock", { fg = colors.BG, bg = colors.SUCCESS })
```
