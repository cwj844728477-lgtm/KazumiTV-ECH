---
layout: default
title: KazumiTV
---

# KazumiTV

<img src="assets/avatar.png" width="144" alt="若叶睦非官方二创头像">

**个人家庭电视使用的非官方 Android TV 开源修改版**

保留 TV 遥控器交互，增加 ARMv7 兼容与 ECH 网络支持。基于 [znbsf/KazumiTV](https://github.com/znbsf/KazumiTV) 及 [Predidit/Kazumi](https://github.com/Predidit/Kazumi)，不是两者或弹弹play的官方产品。

[查看项目源码](https://github.com/cwj844728477-lgtm/KazumiTV-ECH) · [构建说明](https://github.com/cwj844728477-lgtm/KazumiTV-ECH/blob/main/BUILDING.md) · [问题反馈](https://github.com/cwj844728477-lgtm/KazumiTV-ECH/issues)

## 项目用途

用于个人家庭 Android TV 的动画资料浏览、规则管理与视频播放。个人非商业项目，不收费，不运营付费会员或付费弹幕功能，不托管影视资源。使用者应确保自行配置的内容来源及使用方式合法。

## 主要功能

- **电视交互**：保留原 TV 分支的布局、方向键导航、焦点反馈与选集播放逻辑。
- **32 位 ARM 目标**：针对 `armeabi-v7a`，TV 最低系统版本 Android 7.0。
- **ECH 网络适配**：内置 Bangumi 搜索、元数据和海报的 ECH 请求路径，不以电脑常开为前提；不同网络的实际连通性需要验证。
- **规则 API 9**：保留基线中的新版规则支持。

## 弹幕服务接入状态

**已接入维护者获批的弹弹play应用授权。** 节目搜索及弹幕获取接口实测均为 HTTP 200；用户确认 20395 授权包测试成功。

接入番剧/节目搜索、播放时节目匹配及弹幕获取，仅随用户实际操作按需调用，遵循平台配额与缓存要求。不做批量抓取、数据库下载或弹幕数据收费转售。凭据由维护者受保护地注入发布 APK，不提交到公开源码。客户端二进制不能保证凭据无法被提取，维护者已知情确认公开分发；第三方自行构建应申请自己的授权。

## 测试与发布状态

**现提供非官方 ARMv7 发布版：文件名 KazumiTV.apk，应用显示名称 KazumiTV。** 为保留覆盖升级兼容，继续使用此前本机 Android debug 证书签名；并非上游官方签名。用户已确认授权包测试成功，更名版保留原业务、TV操作、头像与弹幕授权。不同设备、网络和第三方视频源仍可能有差异。

[下载 KazumiTV.apk 与对应源码（20396）](https://github.com/cwj844728477-lgtm/KazumiTV-ECH/releases/latest)

应用 ID：`org.localtest.kazumitv.ech`；versionCode：`20396`。保留已能使用的原版，可覆盖升级此前 ECH 包，不要先卸载旧应用。

## 来源与许可

TV 基线提交：`554114bd444c0fea2a3c0c59557a63c99309810b`。

代码遵循 [GPL-3.0](https://github.com/cwj844728477-lgtm/KazumiTV-ECH/blob/main/LICENSE)，第三方资源依其各自许可，详见 [归属声明](https://github.com/cwj844728477-lgtm/KazumiTV-ECH/blob/main/THIRD_PARTY_NOTICES.md)。公开版使用 AI 生成的若叶睦非官方二创头像，不分发 Kazumi 原人物图标。角色与原作权利归相应权利人，不代表原作方授权或背书。

## 隐私与联系

项目维护者不运营集中收集用户播放数据的服务器。应用会按功能连接 Bangumi、用户配置的来源、弹弹play（使用弹幕时）以及相关网络服务；这些服务可能接收 IP、查询词及节目请求信息。详见 [隐私说明](https://github.com/cwj844728477-lgtm/KazumiTV-ECH/blob/main/PRIVACY.md)。

维护者：[@cwj844728477-lgtm](https://github.com/cwj844728477-lgtm)。请通过 [GitHub Issues](https://github.com/cwj844728477-lgtm/KazumiTV-ECH/issues) 联系，不要公开提交账号密码、AppSecret 或未脱敏日志。
