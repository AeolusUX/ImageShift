# ImageShift

Random boot logo rotation for ArkOS and dArkOS.

ImageShift automatically selects a random BMP image from `/boot/BMPs/` at every boot and updates `/boot/logo.bmp` for the next startup.

## Features

* Random boot logo selection
* Prevents the same logo from appearing twice in a row
* Lightweight shell script
* Simple one-step installation
* Compatible with ArkOS and dArkOS

## Installation

1. Download this repository and extract it.
2. Copy the ImageShift folder to either:

```text
/roms/tools/
/roms/ports/
```

3. Launch `Install.ImageShift.sh` from the Tools or Ports menu.

The installer will:

* Install `imageshift.sh` to `/home/ark/.config/`
* Make the script executable
* Configure the script to run automatically at boot
* Remove the installer after installation
* Reboot the device

## Boot Logos

Place your custom boot logos in:

```text
/boot/BMPs/
```

For best results, include at least two BMP images.

## Directory Structure

```text
ImageShift/
├── Install.ImageShift.sh
└── imageshift.sh
```

## How It Works

On each boot, ImageShift:

1. Chooses a random BMP from `/boot/BMPs/`
2. Reads the previously selected image
3. Re-rolls if the same image is selected
4. Updates `/boot/logo.bmp`
5. Stores the selection for the next reboot

Because the boot splash is displayed before startup cron jobs run, the image selected during the current boot will be displayed on the next reboot.

## Requirements

* ArkOS or dArkOS
* A `/boot/BMPs/` directory containing valid BMP files
* At least 2 BMP images for proper randomization

## Credits

This project packages and automates installation of ArkOS boot logo rotation functionality.

Installer created by **AeolusUX** for ArkOS and dArkOS users.

Boot logo rotation script and original concept by **Christian Haitian** as part of ArkOS.

## License

This project is provided as-is without warranty. Feel free to modify and distribute it.
