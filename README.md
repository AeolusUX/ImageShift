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

1. Download or clone this repository.
2. Add your boot logos to:

```text
/boot/BMPs/
```

3. Run the installer:

```bash
chmod +x Install.ImageShift.sh
./Install.ImageShift.sh
```

The installer will:

* Install `imageshift.sh` to `/home/ark/.config/`
* Configure the script to run automatically at boot
* Reboot the device

## Directory Structure

```text
.
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
