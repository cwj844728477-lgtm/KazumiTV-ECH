---
layout: default
title: KazumiTV-ECH
---

# KazumiTV-ECH

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

**尚未取得本项目的弹弹play应用授权，正在准备提交申请。** 当前源码已有接口适配，但无授权构建的弹幕功能不可视为可用。

计划接入番剧/节目搜索、播放时节目匹配及弹幕获取，仅随用户实际操作按需调用，遵循平台配额与缓存要求。不做批量抓取、数据库下载或弹幕数据收费转售。凭据由维护者受保护地注入构建，不提交到公开仓库。

## 测试与发布状态

原本地 ARMv7 测试包已进行模拟器安装和部分功能验证；尚未完成目标电视无代理网络下的完整验收。**本仓库目前发布源码和说明，不提供公开 APK，也不承诺所有设备/网络均可用。**

## 来源与许可

TV 基线提交：`554114bd444c0fea2a3c0c59557a63c99309810b`。

代码遵循 [GPL-3.0](https://github.com/cwj844728477-lgtm/KazumiTV-ECH/blob/main/LICENSE)，第三方资源依其各自许可，详见 [归属声明](https://github.com/cwj844728477-lgtm/KazumiTV-ECH/blob/main/THIRD_PARTY_NOTICES.md)。公开版使用原 TV 分支几何图标，不分发 Kazumi 人物图标。

## 隐私与联系

项目维护者不运营集中收集用户播放数据的服务器。应用会按功能连接 Bangumi、用户配置的来源、弹弹play（取得授权并使用时）以及相关网络服务；这些服务可能接收 IP、查询词及节目请求信息。详见 [隐私说明](https://github.com/cwj844728477-lgtm/KazumiTV-ECH/blob/main/PRIVACY.md)。

维护者：[@cwj844728477-lgtm](https://github.com/cwj844728477-lgtm)。请通过 [GitHub Issues](https://github.com/cwj844728477-lgtm/KazumiTV-ECH/issues) 联系，不要公开提交账号密码、AppSecret 或未脱敏日志。
