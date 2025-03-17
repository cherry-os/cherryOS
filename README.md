<p align="center">
  <img src="https://github.com/user-attachments/assets/54d207e7-7847-42f2-8e0a-64e43514cac8"/>
</p>

# cherryOS &nbsp; [![bluebuild build badge](https://github.com/cherry-os/cherryOS/actions/workflows/build.yml/badge.svg)](https://github.com/cherry-os/cherryOS/actions/workflows/build.yml)
Hey there!
cherryOS isnt really anything new - except for its shell.
Just like in vOS, the default shell will open a distrobox, seperating you from the host.
More features are to come.

# Images
Based on centOS Stream, cherryOS is built to be solid as a rock.

We offer three branches:
- GNOME: Images coming with the GNOME Desktop Environment
- KDE: Images coming with the KDE Desktop Environment
- BASE: Base images with no desktop environment.

# How do I switch?
Open your terminal and run the following, respectively:
- cherryOS GNOME: `rpm-ostree rebase ostree-unverified-registry:ghcr.io/cherry-os/stem-bourbon`
- cherryOS KDE: `rpm-ostree rebase ostree-unverified-registry:ghcr.io/cherry-os/stem-morello`
- cherryOS BASE: `rpm-ostree rebase ostree-unverified-registry:ghcr.io/cherry-os/stem-lambert`

# When will I get updates?
System updates may come regularly or every once in a while.
Updates for cherryOS components like the `cherry` tool will move through
the development repository for testing before they reach stable.

# Contributing
Head over to https://github.com/cherry-os/cherryOS-devel for more info.
