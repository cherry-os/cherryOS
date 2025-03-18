#!/usr/bin/env bash

set -oue pipefail

dnf -y config-manager --set-enabled crb
dnf -y install epel-release
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-10
dnf -y config-manager --add-repo https://copr.fedorainfracloud.org/coprs/chronos/cherries/repo/epel-10/chronos-cherries-epel-10.repo
