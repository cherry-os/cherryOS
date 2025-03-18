<p align="center">
  <img src="https://github.com/user-attachments/assets/5fc1dbf1-b8c1-4096-a708-dca0bfb16996"/>
  <img src="https://github.com/cherry-os/bourbonOS/actions/workflows/build.yml/badge.svg"/>
</p>

No, we are not the alcohol. We are literally the best type of cherry in existence. Fight me.

# About
bourbonOS is a custom image focused on containerization, in a way similar to that of vanillaOS.

We also have a very stable and modern base of CentOS Stream, an upstream version of Enterprise Linux/RHEL. Its update cycle is around five years, making bourbonOS solid as a rock.

Using a base image like this gives you infinite stability, and teaches you to use things like [containers](https://www.geeksforgeeks.org/linux-container) and [nix.](https://wikipedia.org/wiki/Nix_(package_manager)) We also rely on apps from [Flathub](https://flathub.org) as a replacement to system packages, since they are more secure. Think of it as a much, much better version of Microsoft's app store.

We include a bunch of tools to make this possible, if not more streamlined.

Those tools being:

- `cherry`: a command-line tool uses for managing containers, AKA "branches," the baseOS, AKA the "stem," and filesystem protection, AKA "pesticide." Uses [distrobox](https://github.com/89luca89/distrobox) under the hood.
- `cshell`: the shell of all users, it's purpose is to start a lightweight, blinged-out container for the user to use as their shell
- `pesticide`: our version of vanillaOS's FsGuard, it's purpose is to verify directories containing important executables, incase of corruption. In rare cases, corrupt executables can cause damage.
- `nix`: a command-line tool made by NixOS, meant as a better replacement for installing packages on the base system and Homebrew. More info [here.](https://nixos.org/guides/how-nix-works/)

We offer three types of images, with more coming soon:
- GNOME: Images coming with the GNOME Desktop Environment. Simple, efficient, and modern.
- KDE: Images coming with the KDE Desktop Environment. Windows-like, familiar, extensively customizable.
- BASE: Base images with no desktop environment. Bare, reserved for the tinkerers.

# How will updates work?
Updates run in the background, so you don't have to worry about manually updating, and you won't notice. Nice, right?

We also won't bug you to update, or force you to... unlike certain operating systems. Ahem.

Images are built daily to make sure we are up-to-date (doesn't mean you'll update every day), and major changes are tested in the development repository before reaching this repository.

# How do I switch?
Open your terminal and run the following, respectively:
- bourbonOS GNOME: `rpm-ostree rebase ostree-unverified-registry:ghcr.io/bourbonOS/stem-bourbon`
- bourbonOS KDE: `rpm-ostree rebase ostree-unverified-registry:ghcr.io/bourbonOS/stem-morello`
- bourbonOS BASE: `rpm-ostree rebase ostree-unverified-registry:ghcr.io/bourbonOS/stem-lambert`

# Contributing
We'd love it if you want to aid in our development, and we appreciate it!

Head over to [our development repository](https://github.com/bourbonOS/bourbonOS-devel) for more info.
