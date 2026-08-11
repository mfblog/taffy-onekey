#!/usr/bin/env bash

export GH_PROXY="${GH_PROXY:-https://gh-proxy.com/}"
exec bash <(curl -fsSL "${GH_PROXY}https://raw.githubusercontent.com/uerax/taffy-onekey/master/taffy.sh") "$@" -cn
