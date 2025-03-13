#!/usr/bin/env bash

set -oeu pipefail

dnf -y config-manager --set-enabled crb
dnf -y install epel-release
wget -O /etc/yum.repos.d/chronos-cherries-epel-%OS_VERSION%.repo \
    https://copr.fedorainfracloud.org/coprs/chronos/cherries/repo/epel-%OS_VERSION%/chronos-cherries-epel-%OS_VERSION%.repo
