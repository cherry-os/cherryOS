#!/usr/bin/env bash

set -oeu pipefail

dnf -y config-manager --set-enabled crb
