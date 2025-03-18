#!/usr/bin/env bash

set -oue pipefail
NIX_FACTORY_INSTALL_PATH="/usr/share/factory/var"

cre_nix() {
    mkdir -m 0755 /nix
    chown root /nix
}

cre_nix
sh <(curl -L https://nixos.org/nix/install) --daemon --yes
mkdir -p $NIX_FACTORY_INSTALL_PATH
mv /nix $NIX_FACTORY_INSTALL_PATH
cre_nix