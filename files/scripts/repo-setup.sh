#!/usr/bin/env bash

set -oeu pipefail

dnf -y config-manager --set-enabled crb
dnf -y install epel-release
dnf -y config-manager --addrepo https://copr.fedorainfracloud.org/coprs/chronos/cherries/repo/epel-10/chronos-cherries-epel-10.repo
