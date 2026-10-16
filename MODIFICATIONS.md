# 修改与来源记录

## 基线

- TV 基线：znbsf/KazumiTV，提交 `554114bd444c0fea2a3c0c59557a63c99309810b`。
- 上游应用：Predidit/Kazumi。
- 应用源码版本：`0.4.2+20394`；本仓库不是上游正式发行。

## 本地修改

- 增加 `ech_http 0.2.1` 及相应网络适配，用于 Bangumi 元数据/搜索/图片请求。
- 沿用 TV 基线中的规则 API 9，保留 TV UI、焦点导航和播放器业务逻辑。
- 独立 applicationId `org.localtest.kazumitv.ech`；限制打包 ABI 为 ARMv7。
- 弹弹play凭据保持构建时注入，公开源码不含真实凭据。

## 公开整理

- 只从完整源码归档的 KazumiTV/ 前缀提取应用文件，并与实际应用工作区核对 pubspec.yaml 和 pubspec.lock；独立 test-harness/ 与 build-support/ 目录不平铺覆盖到应用根目录。
- 公开版使用维护者确认的 AI 生成若叶睦二创头像，替换启动图标、TV 横幅中央图像和前景资源别名；不分发 Kazumi 原人物图标，同时排除其他平台工程及旧商店图标素材。
- 保留 GPL-3.0、上游贡献归属、字体和第三方依赖声明。
- 移除本机辅助脚本、机器路径、上游自动发布 workflow，防止复制后误触发原项目发布流程。
- 增加本项目 README、构建说明、隐私说明和独立项目介绍页。原上游说明保留为 README.upstream.md；历史文档不代表本项目的授权或验收状态。

本次头像更新不修改 `lib/` 应用业务源码，保留原 TV 排版、焦点和播放器逻辑；versionCode 从 20393 增加至 20394，包名与签名保持兼容。APK 作为非官方 ARMv7 预发布测试包提供，对应源码与校验文件随 Release 发布。弹弹play授权仍未取得。
