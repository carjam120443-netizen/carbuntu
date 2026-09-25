# Carbuntu 
<p align="center">
  <img src="assets/carbuntu-logo.svg" alt="Carbuntu logo" width="800">
</p>
🚗🐧

**Carbuntu** is a personal Ubuntu-based Linux distribution project.

The goal is to build a lightweight, customizable Ubuntu desktop while keeping the familiar Ubuntu package ecosystem underneath. Carbuntu currently targets **Ubuntu 26.04 LTS (Resolute Raccoon)** and uses the official Ubuntu archive repositories.

## ✨ Current goals

- Ubuntu 26.04 LTS base
- XFCE desktop environment
- LightDM login manager
- NetworkManager for networking
- Custom Carbuntu branding and system identity
- Reproducible live ISO builds
- Keep the base close to Ubuntu so normal Ubuntu packages remain useful

## 🧱 Base

Carbuntu is built from Ubuntu 26.04 LTS, codename **Resolute Raccoon**.

The build uses these official Ubuntu repositories:

- `resolute`
- `resolute-updates`
- `resolute-security`
- `resolute-backports`

## 🔨 Building

### On Ubuntu/Debian

Install the build dependencies:

```bash
sudo apt update
sudo apt install live-build debootstrap squashfs-tools xorriso grub-pc-bin grub-efi-amd64-bin mtools
```

Clone Carbuntu:

```bash
git clone https://github.com/carjam120443-netizen/carbuntu.git
cd carbuntu
```

Build the ISO:

```bash
./build.sh
```

The generated ISO will appear in `build/`.

> **Note:** ISO building should be done on a supported Linux build environment. VirtualBox is a good way to test Carbuntu without changing the host OS.

## 📁 Project layout

```text
carbuntu/
├── build.sh
├── config/
│   ├── package-lists/
│   │   └── carbuntu.list.chroot
│   ├── includes.chroot/
│   │   └── etc/
│   │       └── os-release
│   └── archives/
│       └── ubuntu.list.chroot
└── README.md
```

## 🚧 Status

Carbuntu is an **early development project**. The build system and package selection will change as the distro develops.

## 📜 License

This project is provided under the terms of the repository's license.

Carbuntu is an independent project and is not an official Ubuntu flavor or Canonical product.

## GitHub Actions

Every push or pull request targeting `main` runs the first Carbuntu automation workflow. It builds the ISO on GitHub's `ubuntu-26.04` runner and uploads the resulting ISO as a workflow artifact. You can also start the workflow manually from the **Actions** tab. GitHub documents `ubuntu-26.04` as an available hosted runner, and workflow files live under `.github/workflows/`. citeturn0search0turn0search3
