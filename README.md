# KazumiTV

<img src="website/assets/avatar.png" width="144" alt="若叶睦非官方二创头像">

面向个人家庭电视使用的 **非官方 Android TV 修改版**。基于 [znbsf/KazumiTV](https://github.com/znbsf/KazumiTV)，上游为 [Predidit/Kazumi](https://github.com/Predidit/Kazumi)。不是上述项目或弹弹play的官方客户端。

[项目主页](https://cwj844728477-lgtm.github.io/KazumiTV-ECH/) · [问题反馈](https://github.com/cwj844728477-lgtm/KazumiTV-ECH/issues) · [构建说明](BUILDING.md) · [来源与许可](THIRD_PARTY_NOTICES.md)

## 项目目的

保留 znbsf TV 分支的排版、遥控器焦点与播放器逻辑，为家庭 Android TV 提供 ARMv7 构建、Bangumi 元数据/海报 ECH 网络支持及规则 API 9 兼容。个人非商业项目，不收费，不提供会员或付费弹幕服务；不托管影视资源。播放来源由使用者自行配置，并应确保拥有相应使用权。

## 当前状态

- **已接入维护者获批的弹弹play应用授权。** 用户已确认 20395 授权包测试成功；20396 仅清理显示名称和文件名并递增版本号，不改变业务代码、头像或授权配置。
- **应用显示名称：KazumiTV；安装包文件名：KazumiTV.apk。** 版本 `0.4.2+20396`。用户测试反馈不等于所有设备或网络均已验收。
- 本次公开整理仅使用归档中的 `KazumiTV/` 应用目录，保持完整应用 `pubspec.yaml` / `pubspec.lock`，不混入独立测试工程；排除本机辅助脚本、私有配置和上游 CI，未改动 `lib/` 业务源码。
- 公开版使用经维护者确认的 AI 生成若叶睦二创头像，不使用 Kazumi 原人物图标。头像不代表 BanG Dream! 官方授权或背书。
- **ARMv7 安装包、对应源码和校验文件见 [Releases](https://github.com/cwj844728477-lgtm/KazumiTV-ECH/releases/latest)。** 这是非官方发布版；为保留覆盖升级兼容，继续使用此前本机 Android debug 证书签名，并非上游官方签名，也未迁移新的生产签名密钥。

## 功能与运行方式

- Android TV 专用构建：方向键导航、焦点反馈、选集与播放控制。
- 目标 ABI：`armeabi-v7a`；TV 最低系统版本 Android 7.0 / API 24。
- 规则 API 9：沿用基线提交中的实现，不是简单跳过版本检查。
- 元数据及海报：当前修改版 `Bangumi镜像` 关闭时走内置 ECH，开启时走原镜像。不需要电脑代理常开；实际连通性仍需在目标网络验证。
- 独立应用 ID：`org.localtest.kazumitv.ech`，与上游正式包并存。

## 弹弹play接入范围

使用番剧/节目搜索、播放时匹配节目及获取弹幕，仅随用户实际操作按需调用，不做批量抓取、弹幕数据库下载或收费转售。服务可用性与配额受平台约束，不承诺无限或永久可用。

应用凭据通过仓库外受保护的 JSON 注入发布 APK。**公开源码、源码归档和日志不含 AppSecret、凭据文件或私有签名密钥。** 客户端 APK 不能保证密钥无法被提取，维护者已知情确认公开分发；第三方自行构建或派生项目应申请自己的应用授权，不应提取或复用本应用凭据。

## 隐私与第三方服务

项目主页不使用分析脚本或自建收集端点。应用功能会直接连接第三方服务：Bangumi 元数据、用户配置的视频来源、弹弹play（使用弹幕时）、以及 ECH/DoH 所需服务。相关服务可能接收 IP、查询词与节目请求信息；具体以对应服务政策为准。本项目维护者不运营用于集中收集用户播放数据的服务器。详见 [隐私说明](PRIVACY.md)。

## 来源、差异与许可

基线：`znbsf/KazumiTV@554114bd444c0fea2a3c0c59557a63c99309810b`。修改集中在 ECH 传输、ARMv7 打包及独立测试身份。详细见 [修改记录](MODIFICATIONS.md)。

代码遵循 [GNU GPL v3](LICENSE)，第三方字体、依赖与素材遵循各自许可。保留 [第三方声明](THIRD_PARTY_NOTICES.md)。原项目说明保存在 [README.upstream.md](README.upstream.md)；原说明及历史文档中的发布/签名/弹幕验收结论属于上游，不代表本项目的当前验证结果；当前状态以本页和发布记录为准。

维护者：[@cwj844728477-lgtm](https://github.com/cwj844728477-lgtm)。联系请使用本仓库 Issues，不要在公开 Issue 中发送任何密钥或个人凭据。
