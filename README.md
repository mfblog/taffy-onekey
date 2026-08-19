## Usage

__不保存脚本执行（推荐）__

```bash
# 海外机器直连
bash -c "$(curl -sL https://raw.githubusercontent.com/uerax/taffy-onekey/master/taffy.sh)" @

# 国内机器加速 (-cn 参数)
bash -c "$(curl -sL https://gh-proxy.com/https://raw.githubusercontent.com/uerax/taffy-onekey/master/taffy.sh)" @ -cn

# 自定义代理加速镜像
bash -c "$(curl -sL https://raw.githubusercontent.com/uerax/taffy-onekey/master/taffy.sh)" @ --proxy=https://gh-proxy.com/
```

__保存脚本本地执行__

```bash
# 下载脚本
wget --no-check-certificate -q -O taffy.sh "https://raw.githubusercontent.com/uerax/taffy-onekey/master/taffy.sh" && chmod +x taffy.sh

# 交互式菜单运行
sudo bash taffy.sh

# 国内加速运行
sudo bash taffy.sh -cn
```

__快捷命令行（单内核安装 / 卸载）__

```bash
# 一键安装 Singbox (支持 -cn)
bash -c "$(curl -sL https://raw.githubusercontent.com/uerax/taffy-onekey/master/taffy.sh)" @ singbox

# 一键安装 Mihomo (支持 -cn)
bash -c "$(curl -sL https://raw.githubusercontent.com/uerax/taffy-onekey/master/taffy.sh)" @ mihomo

# 一键安装 Xray (支持 -cn)
bash -c "$(curl -sL https://raw.githubusercontent.com/uerax/taffy-onekey/master/taffy.sh)" @ xray

# 完全卸载
bash -c "$(curl -sL https://raw.githubusercontent.com/uerax/taffy-onekey/master/taffy.sh)" @ uninstall
```

## Script

基于 Shell 的 Linux VPS 代理内核一键部署工具，现已完美支持海内外加速统一调度。

### 支持核心

- **Xray**
- **Sing-box**
- **Mihomo**

### 支持协议

- Hysteria2 (Sing-box / Mihomo)
- AnyTLS (Sing-box / Mihomo)
- Mieru (Mihomo)
- VLESS REALITY (TCP / gRPC / H2)
- Shadowsocks 2022 / AEAD
- Socks5 / Redirect 端口转发

## Question

* 分享链接可能存在问题，客户端如果解析失败可以手动填写参数。
