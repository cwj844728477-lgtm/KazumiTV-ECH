# KazumiTV-ECH

面向个人家庭电视使用的 **非官方 Android TV 修改版**。基于 [znbsf/KazumiTV](https://github.com/znbsf/KazumiTV)，上游为 [Predidit/Kazumi](https://github.com/Predidit/Kazumi)。不是上述项目或弹弹play的官方客户端。

[项目主页](https://cwj844728477-lgtm.github.io/KazumiTV-ECH/) · [问题反馈](https://github.com/cwj844728477-lgtm/KazumiTV-ECH/issues) · [构建说明](BUILDING.md) · [来源与许可](THIRD_PARTY_NOTICES.md)

## 项目目的

保留 znbsf TV 分支的排版、遥控器焦点与播放器逻辑，为家庭 Android TV 提供 ARMv7 构建、Bangumi 元数据/海报 ECH 网络支持及规则 API 9 兼容。个人非商业项目，不收费，不提供会员或付费弹幕服务；不托管影视资源。播放来源由使用者自行配置，并应确保拥有相应使用权。

## 当前状态

- **源码已公开，弹弹play应用授权尚未取得，正在准备申请。** 无授权构建不能正常搜索或加载弹幕，不应将已有接口代码视为已获服务授权。
- 本地 ARMv7 测试构建已完成模拟器安装及部分功能检查；尚未完成 TCL 电视无代理网络下的完整验收，不保证全部网络环境均可用。
- 本次公开整理仅使用归档中的 `KazumiTV/` 应用目录，保持完整应用 `pubspec.yaml` / `pubspec.lock`，不混入独立测试工程；排除本机辅助脚本、私有配置和上游 CI，未改动 `lib/` 业务源码。
- 公开版使用 TV 分支原有几何图标，不分发授权范围不明确的 Kazumi 人物图标。**当前没有发布公开 APK。**

## 功能与运行方式

- Android TV 专用构建：方向键导航、焦点反馈、选集与播放控制。
- 目标 ABI：`armeabi-v7a`；TV 最低系统版本 Android 7.0 / API 24。
- 规则 API 9：沿用基线提交中的实现，不是简单跳过版本检查。
- 元数据及海报：当前修改版 `Bangumi镜像` 关闭时走内置 ECH，开启时走原镜像。不需要电脑代理常开；实际连通性仍需在目标网络验证。
- 独立应用 ID：`org.localtest.kazumitv.ech`，与上游正式包并存。

## 计划接入弹弹play的范围

申请使用番剧/节目搜索、播放时匹配节目及获取弹幕。仅随用户实际操作按需调用，不做批量抓取、弹幕数据库下载或收费转售。缓存与配额按平台要求配置。未取得有效授权前不启用可用性承诺。

应用凭据通过本地受保护的 JSON 或构建机密注入，**不提交 AppSecret、签名证书或任何账号凭据到仓库**。第三方若自行构建，应申请自己的应用授权，不能复用其他项目的私密配置。

## 隐私与第三方服务

项目主页不使用分析脚本或自建收集端点。应用功能会直接连接第三方服务：Bangumi 元数据、用户配置的视频来源、弹弹play（获得授权并使用弹幕时）、以及 ECH/DoH 所需服务。相关服务可能接收 IP、查询词与节目请求信息；具体以对应服务政策为准。本项目维护者不运营用于集中收集用户播放数据的服务器。详见 [隐私说明](PRIVACY.md)。

## 来源、差异与许可

基线：`znbsf/KazumiTV@554114bd444c0fea2a3c0c59557a63c99309810b`。修改集中在 ECH 传输、ARMv7 打包及独立测试身份。详细见 [修改记录](MODIFICATIONS.md)。

代码遵循 [GNU GPL v3](LICENSE)，第三方字体、依赖与素材遵循各自许可。保留 [第三方声明](THIRD_PARTY_NOTICES.md)。原项目说明保存在 [README.upstream.md](README.upstream.md)；原说明及历史文档中的发布/签名/弹幕验收结论属于上游，不代表本项目已获授权。

维护者：[@cwj844728477-lgtm](https://github.com/cwj844728477-lgtm)。联系请使用本仓库 Issues，不要在公开 Issue 中发送任何密钥或个人凭据。
