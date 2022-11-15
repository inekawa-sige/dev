# Private-Proxy

## セットアップ

``` sh
# git clone https://github.com/inekawa-sige/dev.git
# cd docker/private-proxy
# docker compose build
```

ビルドに成功したら、compose.ymlをエディタで開く、VPN_USER,VPN_PASSに発行された認証情報を設定する。

## 起動

``` sh
# docker compose up -d
```

## 使い方

``` sh
# export http_proxy=http://localhost:8118
# export https_proxy=http://localhost:8118
```
