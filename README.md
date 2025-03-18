<p align="center">
  <img src="https://github.com/user-attachments/assets/5fc1dbf1-b8c1-4096-a708-dca0bfb16996"/>
</p>

# bourbonOS &nbsp; [![bluebuild build badge](https://github.com/cherry-os/bourbonOS/actions/workflows/build.yml/badge.svg)](https://github.com/cherry-os/bourbonOS/actions/workflows/build.yml)
Hey there!
bourbonOS isnt really anything new - except for its shell.
Just like in vOS, the default shell will open a distrobox, seperating you from the host.
More features are to come.

# Images
Based on centOS Stream, bourbonOS is built to be solid as a rock.

We offer three branches:
- GNOME: Images coming with the GNOME Desktop Environment
- KDE: Images coming with the KDE Desktop Environment
- BASE: Base images with no desktop environment.

# How do I switch?
Open your terminal and run the following, respectively:
- bourbonOS GNOME: `rpm-ostree rebase ostree-unverified-registry:ghcr.io/bourbonOS/stem-bourbon`
- bourbonOS KDE: `rpm-ostree rebase ostree-unverified-registry:ghcr.io/bourbonOS/stem-morello`
- bourbonOS BASE: `rpm-ostree rebase ostree-unverified-registry:ghcr.io/bourbonOS/stem-lambert`

# When will I get updates?
System updates may come regularly or every once in a while.
Updates for bourbonOS components like the `cherry` tool will move through
the development repository for testing before they reach stable.

# Contributing
Head over to https://github.com/bourbonOS/bourbonOS-devel for more info.
