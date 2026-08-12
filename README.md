# OpenWrt-360T7

[English](#english) | 简体中文

本项目基于 GitHub Actions 实现云编译 OpenWrt (ImmortalWrt) 固件，专为 **360T7** 路由器设计。利用云端环境，你可以全自动构建、打包并发布最新的定制固件，无需在本地配置繁琐的编译环境。

## 🎯 固件特性与默认配置

编译出的固件开箱即用，已集成日常所需的基础功能与常用插件：

- **默认后台地址**：`192.168.50.1`
- **默认用户名**：`root`
- **默认密码**：无（为空，请在首次登录后自行设置密码）
- **默认主机名**：`360T7`
- **主要预装插件**：
  - `luci-app-passwall`：科学上网神器
  - `luci-app-filemanager`：Web 文件管理
  - `luci-app-wechatpush`：微信/TG 推送通知
  - `luci-app-appfilter`：应用与上网访问控制
  - `luci-app-autoreboot`：计划自动重启
  - `luci-app-ddns`：动态域名解析
  - `luci-app-frpc` / `luci-app-natmap`：内网穿透与端口映射
  - `luci-app-sqm`：智能队列与网络延迟优化
  - `luci-app-ttyd`：Web 终端
  - `luci-app-upnp`：UPnP、PCP 与 NAT-PMP
  - `luci-app-watchcat`：网络连接看门狗
  - `luci-app-wifischedule`：Wi-Fi 定时开关
  - `luci-app-wol`：网络唤醒
  - `luci-app-zerotier` / `luci-proto-wireguard`：组网与 VPN

## 🚀 如何使用 (云编译)

1. **Fork 本项目**：点击页面右上角的 `Fork` 按钮，将项目复制到你的 GitHub 仓库。
2. **启用 Actions**：进入你 Fork 的仓库，点击上方的 `Actions` 选项卡，同意并启用 GitHub Actions 功能。
3. **触发编译**：
   - 在 Actions 页面左侧选择 `OpenWrt-360T7` 工作流。
   - 点击右侧的 `Run workflow` 按钮手动触发一次编译。
4. **下载固件**：
   - 编译通常需要 1 到 2 小时。
   - 编译成功后，在仓库主页右侧的 **Releases** 页面或 Actions 的 **Artifacts** 区域即可下载固件包。普通升级使用 `sysupgrade.itb`；`recovery.itb`、`preloader.bin` 和 `bl31-uboot.fip` 仅用于恢复或引导程序安装，不要在普通升级时写入。
   - 从旧版固件跨大版本升级时不要保留配置，升级前请先备份，并准备串口或救砖环境。

## 🛠 如何自定义固件

如果你想深度定制自己的专属固件，可以修改以下文件：

- **`main.config` / `extra.config`**：使用标准 OpenWrt `.config` 格式，增删你想要的软件包（将 `=y` 设为安装，`#` 注释或 `=n` 为不安装）。
- **`diy2.sh`**：在更新软件源之后执行。你可以在这里修改默认后台 IP（目前为 `192.168.50.1`）、默认主题、调整内核参数等。

## 🔗 编译源码与参考资料

- 源码仓库：[immortalwrt/immortalwrt](https://github.com/immortalwrt/immortalwrt)（`openwrt-25.12`）
- 插件对照：[OpenWrt 插件对应中文名称](https://www.right.com.cn/forum/thread-3682029-1-1.html) （仅供参考）
- 框架鸣谢：[P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)

---

<h1 id="english">OpenWrt-360T7</h1>

[简体中文](#openwrt-360t7) | English

This project uses GitHub Actions to compile OpenWrt (ImmortalWrt) firmware in the cloud, specifically tailored for the **360T7** router. This allows you to automatically build and release custom firmware without setting up a local build environment.

## 🎯 Default Configurations & Features

The compiled firmware is ready out-of-the-box and integrates commonly used features and plugins:

- **Default IP Address**: `192.168.50.1`
- **Default Username**: `root`
- **Default Password**: *None* (Empty by default; please set a password upon your first login)
- **Default Hostname**: `360T7`
- **Pre-installed Plugins**:
  - `luci-app-passwall`: Advanced proxy and routing tool
  - `luci-app-filemanager`: Web-based file management
  - `luci-app-wechatpush`: Push notifications (WeChat/Telegram)
  - `luci-app-appfilter`: Application and internet access control
  - `luci-app-autoreboot`: Scheduled automatic reboot
  - `luci-app-ddns`: Dynamic DNS
  - `luci-app-frpc` / `luci-app-natmap`: Intranet tunneling and port mapping
  - `luci-app-sqm`: Smart queue management and latency optimization
  - `luci-app-ttyd`: Web terminal
  - `luci-app-upnp`: UPnP, PCP, and NAT-PMP
  - `luci-app-watchcat`: Network connectivity watchdog
  - `luci-app-wifischedule`: Scheduled Wi-Fi
  - `luci-app-wol`: Wake on LAN
  - `luci-app-zerotier` / `luci-proto-wireguard`: Overlay networking and VPN

## 🚀 How to Use (Cloud Compilation)

1. **Fork the Repository**: Click the `Fork` button at the top right to copy the repository to your GitHub account.
2. **Enable Actions**: Navigate to the `Actions` tab in your forked repository and acknowledge the prompt to enable workflows.
3. **Trigger the Build**:
   - Select the `OpenWrt-360T7` workflow from the left sidebar.
   - Click the `Run workflow` button on the right to trigger a manual compilation.
4. **Download Firmware**:
   - The build process usually takes 1 to 2 hours.
   - Once completed, download the firmware from the **Releases** page or the **Artifacts** section. Use `sysupgrade.itb` for normal upgrades. `recovery.itb`, `preloader.bin`, and `bl31-uboot.fip` are only for recovery or bootloader installation.
   - Do not preserve settings when upgrading from the old firmware across major releases. Back up first and prepare a serial or recovery method.

## 🛠 Customizing Your Firmware

To deeply customize your firmware, simply edit the following files:

- **`main.config` / `extra.config`**: Modify standard OpenWrt `.config` parameters. Add plugins by setting them to `=y` or remove them by commenting them out.
- **`diy2.sh`**: Executes after updating feeds. Use this to change the default IP address (currently `192.168.50.1`), hostname, default theme, or core system files.

## 🔗 Source Code & References

- Build Source: [immortalwrt/immortalwrt](https://github.com/immortalwrt/immortalwrt) (`openwrt-25.12`)
- Plugin Reference: [OpenWrt Plugin Chinese Names Mapping](https://www.right.com.cn/forum/thread-3682029-1-1.html)
- Framework Credit: [P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)

## License / 许可证

本仓库自行维护的构建脚本、配置和文档，在没有单独声明且版权持有人有权授权的范围内，使用 [MIT License](LICENSE)。从第三方项目继承或引用的代码继续遵循其原始许可证。OpenWrt、ImmortalWrt 以及编译进固件的第三方软件包分别遵循各自的许可证；本仓库的 MIT License 不表示最终生成的 firmware 中所有组件均采用 MIT License。

Build scripts, configurations, and documentation maintained by this repository are provided under the [MIT License](LICENSE) unless separately stated, and only to the extent that the copyright holder has the right to license them. Code inherited or referenced from third-party projects remains under its original license. OpenWrt, ImmortalWrt, and third-party packages compiled into the firmware remain subject to their respective licenses; this repository's MIT License does not mean that every component in the resulting firmware is licensed under the MIT License.
