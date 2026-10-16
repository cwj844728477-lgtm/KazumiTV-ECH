# 修改与来源记录

## 基线

- TV 基线：znbsf/KazumiTV，提交 `554114bd444c0fea2a3c0c59557a63c99309810b`。
- 上游应用：Predidit/Kazumi。
- 应用源码版本：`0.4.2+20393`；本仓库不是上游正式发行。

## 本地修改

- 增加 `ech_http 0.2.1` 及相应网络适配，用于 Bangumi 元数据/搜索/图片请求。
- 沿用 TV 基线中的规则 API 9，保留 TV UI、焦点导航和播放器业务逻辑。
- 独立 applicationId `org.localtest.kazumitv.ech`；限制打包 ABI 为 ARMv7。
- 弹弹play凭据保持构建时注入，公开源码不含真实凭据。

## 公开整理

- 只从完整源码归档的 KazumiTV/ 前缀提取应用文件，并与实际应用工作区核对 pubspec.yaml 和 pubspec.lock；独立 test-harness/ 与 build-support/ 目录不平铺覆盖到应用根目录。
- 公开版恢复 TV 分支几何图标；不分发个人本地测试所用、版权另有约束的人物图标，同时排除其他平台工程及旧商店图标素材。
- 保留 GPL-3.0、上游贡献归属、字体和第三方依赖声明。
- 移除本机辅助脚本、机器路径、上游自动发布 workflow，防止复制后误触发原项目发布流程。
- 增加本项目 README、构建说明、隐私说明和独立项目介绍页。原上游说明保留为 README.upstream.md；历史文档不代表本项目的授权或验收状态。

本次公开整理不修改 `lib/` 应用业务源码。当前只发布源码与介绍页，尚不发布公开 APK。
