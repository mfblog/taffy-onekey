GH_PROXY="https://gh-proxy.com/"

amd="${GH_PROXY}https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip"
arm="${GH_PROXY}https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-arm64-v8a.zip"
link=""

case "$(uname -m)" in
    'armv8' | 'aarch64')
      link=${arm}
      ;;
    *)
      link=${amd}
      ;;
esac

command -v unzip >/dev/null 2>&1 || { apt install -y unzip || apk add --no-cache unzip; }

tmpdir=$(mktemp -d)
cd "$tmpdir"

wget ${link} -O Xray-linux.zip

unzip Xray-linux.zip

mv xray /usr/local/bin/
mkdir -p /usr/local/share/xray
[ -f geoip.dat ] && mv geoip.dat /usr/local/share/xray/
[ -f geosite.dat ] && mv geosite.dat /usr/local/share/xray/

cd /
rm -rf "$tmpdir"
mkdir -p /usr/local/etc/xray

cat > /etc/systemd/system/xray.service << EOF
[Unit]
Description=Xray Service
Documentation=https://github.com/xtls
After=network.target nss-lookup.target

[Service]
ExecStart=/usr/local/bin/xray run -config /usr/local/etc/xray/config.json
Restart=on-failure
RestartPreventExitStatus=23
LimitNPROC=10000
LimitNOFILE=1000000

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable xray
