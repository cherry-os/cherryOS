#!/bin/bash

NIX_DAEMON_PATH=$(find /nix/store -name nix-daemon | grep '/bin/nix-daemon$' | head -n 1)
exec "$NIX_DAEMON_PATH" nix-daemon --daemon