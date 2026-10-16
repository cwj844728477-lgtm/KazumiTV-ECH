# 构建 KazumiTV-ECH

## 环境

个人测试构建使用 Flutter 3.47.7（Dart 3.13.5）、JDK 17、Android SDK 36 与 NDK 28.2.13676358。`pubspec.lock` 保留固定依赖，media-kit 使用声明中的 Git 提交。需能访问 Flutter、Pub、Google Maven、Maven Central 和相关 Git 仓库。

本公开源码仅保留 Android TV 所需平台工程；不发布其他平台工程和旧商店图标素材。目标为 Android TV ARMv7，不声称其他平台可构建或已测试。

## 无弹幕授权的本地测试构建

```sh
flutter pub get
flutter build apk --release --flavor tv --target-platform android-arm
```

`android/gradle.properties` 已启用 `kazumiTv=true`，使用独立应用 ID `org.localtest.kazumitv.ech`。不要省略 `--flavor tv`，否则不代表 TV 专用排版与焦点逻辑。

未提供正式签名环境时，现有配置使用本机 Android debug keystore 为 release 构建签名。这只适用于本地测试，不是原作者签名，也不保证能覆盖其他人构建的同包名应用。不要为了安装覆盖包而先删除现有数据。

## 获得自己的弹弹play应用授权后

将获批的 AppId 和 AppSecret 写入仓库外受保护的 JSON 文件，字段名为 `DANDANAPI_APPID` 和 `DANDANAPI_KEY`。不要上传真实值。

```sh
flutter build apk --release --flavor tv --target-platform android-arm --dart-define-from-file=/absolute/path/outside-repo/dandan-credentials.json
```

上述路径只是示例，请换成自己的受保护文件。无有效授权时自动匹配和手动弹幕搜索仍可能失败；取得授权后应分别实测搜索、节目匹配和可见弹幕，并遵守获批配额。

## 测试与验收边界

原本地构建曾完成 ARMv7/签名/安装检查及隔离逻辑测试；它不等于本次公开整理后的全量构建通过。公开整理主要修复源代码归档清单、移除非公开美术和增加说明，`lib/` 业务源码保持不变。

依赖 `ech_http` 的 native-assets hook 可能使 Windows 上的直接 `flutter test` 要求 Visual Studio C++；Android 打包不因此必然需要整个 Visual Studio。不要用未执行的测试结果替代实际输出。

发布 APK 前应检查：仅含 `armeabi-v7a`、全部原生库 ABI 一致、APK 签名、独立包名、TV 启动入口，以及遥控导航/规则/搜索/海报/播放/弹幕的实际运行。模拟器宿主机若开着代理，不能据此证明电视无代理网络可用。
