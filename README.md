# 口袋爪爪 · Pocket Paws

一款本地运行的 macOS 桌面小宠物原型。猫猫「糯米」与狗狗「布丁」可以切换，支持摸摸、喂食、玩球、休息、拖动和置顶。

## 使用

下载 PocketPaws-macOS.zip，解压后打开 PocketPaws.app。右键或点击「更多」可切换宠物和退出。压缩包保留启动文件的执行权限。

index.html 是独立浏览器预览版，网页本身不会悬浮在其他应用上方。

## 从源码构建

将仓库下载到 Mac，进入项目目录后运行：

```sh
sh build.command
```

生成 PocketPaws.app，无需 Xcode、Node.js 或额外依赖。界面使用 SVG/CSS/JavaScript；原生窗口使用 macOS 自带的 JXA、AppKit 和 WebKit。没有网络请求。

## 文件

- index.html：宠物绘制、动画和互动逻辑。
- main.js：透明悬浮窗口与原生消息处理。
- build.command：应用打包脚本。
- PocketPaws-macOS.zip：预打包 Mac 应用。
- USAGE.md：中文使用说明。

## 当前验证状态

已通过应用配置检查及启动进程检查。自动化界面检查受到工具限制，尚未完成实际点击和拖动的验证。本项目是初版原型。
