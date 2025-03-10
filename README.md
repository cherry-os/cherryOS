<p align="center">
  <img src="https://github.com/user-attachments/assets/b7cc112a-42dc-4d74-b055-0909e7143abb"/>
</p>

# cherryOS &nbsp; [![bluebuild build badge](https://github.com/cherry-os/cherryOS/actions/workflows/build.yml/badge.svg)](https://github.com/cherry-os/cherryOS/actions/workflows/build.yml)
Hey there!
cherryOS isnt really anything new - except for its shell.
Just like in vOS, the default shell will open a distrobox, seperating you from the host.
More features are to come.

# Images
We offer two types of images with three branches.
_____________
- LTS: Stable, secure, and reliable. Does not receive breaking changes to system components immediately,
  goes through a 5-year release cycle. Based on CentOS stream10.
- Stable: A bit less stable, but still secure and reliable. May receive breaking changes to system components immediately.
  Based on the latest stable release of Fedora 41.
- DEV: Unstable, unreliable, and possibly insecure. This type is for the development of cherryOS.
  Only switch to this branch if you want to contribute to the development of cherryOS, or you know what you're doing.
  Based on Fedora 41.
______________
Both types have three branches:
- GNOME: Images coming with the GNOME Desktop Environment
- KDE: Images coming with the KDE Desktop Environment
- BASE: Base images with no desktop environment.

# How do I switch?
Open your terminal and run the following:
```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/cherry-os/<image_name>
```
Replace <image_name> with your image name.
For example, if you want the LTS type and the GNOME branch, the image name would be `lts-gnome`.

# When will I get updates?
System updates may come regularly or every once in a while.
Updates for cherryOS components like the `cherry` tool will move through
the development repository for testing before they reach the stable and LTS types.
