#!/bin/bash

semanage fcontext -a -t etc_t '/nix/store/[^/]+/etc(/.*)?'
semanage fcontext -a -t lib_t '/nix/store/[^/]+/lib(/.*)?'
semanage fcontext -a -t systemd_unit_file_t '/nix/store/[^/]+/lib/systemd/system(/.*)?'
semanage fcontext -a -t man_t '/nix/store/[^/]+/man(/.*)?'
semanage fcontext -a -t bin_t '/nix/store/[^/]+/s?bin(/.*)?'
semanage fcontext -a -t usr_t '/nix/store/[^/]+/share(/.*)?'
semanage fcontext -a -t var_run_t '/nix/var/nix/daemon-socket(/.*)?'
semanage fcontext -a -t usr_t '/nix/var/nix/profiles(/per-user/[^/]+)?/[^/]+'
semanage fcontext -a -t etc_t '/var/nix/store/[^/]+/etc(/.*)?'
semanage fcontext -a -t lib_t '/var/nix/store/[^/]+/lib(/.*)?'
semanage fcontext -a -t systemd_unit_file_t '/var/nix/store/[^/]+/lib/systemd/system(/.*)?'
semanage fcontext -a -t man_t '/var/nix/store/[^/]+/man(/.*)?'
semanage fcontext -a -t bin_t '/var/nix/store/[^/]+/s?bin(/.*)?'
semanage fcontext -a -t usr_t '/var/nix/store/[^/]+/share(/.*)?'
semanage fcontext -a -t var_run_t '/var/nix/var/nix/daemon-socket(/.*)?'
semanage fcontext -a -t usr_t '/var/nix/var/nix/profiles(/per-user/[^/]+)?/[^/]+'
restorecon -RF /nix