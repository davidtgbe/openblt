# OpenBLT for Anet ET4/5 3D printers

I have adapted OpenBLT bootloader to work with the Anet ET4/5 motherboard, along with the ET4/5 marlin project.

## Current status

Working
- PC-USB firmware installation/updates
- SD-CARD firmware installation/updates
- DFU firmware/bootloader installation/updates

## On progress

TFT integration to show BL messages.

## BUILD/INSTALLATION

DISCLAIMER: Not for production use. This is an unfinished project and under development. I am not responsible for what may happen to the motherboard or printer. Use only at your own risk.

As this BL has been intended to be used with the Marlin project of this [repo](https://github.com/davidtgbe/Marlin), you can refer to those instructions to install this bootloader.

## FAQ
Why is my screen white?
- Usually, when you see a white screen it usually means BL is active. It could be waiting for an incomming update, performing an update, working in DFU mode (touching screen by accident at boot time), or simply idle because it has not found a suitable firmware to load.  
White screen could also mean a lot of things like an broken board, so, try not blaming BL for everything :)

I have the BL installed, but when I flash the firmware with the flasher, screen remains white forever after restarting the printer.
- BL will only load the firmware if this firmware has been written by the BL itself. That is so because it adds a checksum to the firmware at the end of the install/update process. This checksum will not be written if the firmware has been flashed with j-lin/st-link, thus, the BL will not load any firmware, and will remain active, waiting for an incoming install/update.

I want to enter into DFU mode to experiment or update BL/FW. How can I enter to this mode?
- You can enter into DFU mode by pressing touch screen while switching on the printer.

# OpenBLT Bootloader

OpenBLT is an open source bootloader for STM32, XMC, HCS12 and other microcontroller targets.

OpenBLT enables you and your customers to update the firmware on your microcontroller based product. A major benefit of OpenBLT being open source is that you can customize and tweak the bootloader to your specific needs.

OpenBLT can be ported to any 8-bit, 16-bit, or 32-bit microcontroller and currently runs on runs on ST STM32, Infineon XMC, NXP S12, and TI TM4C and LM3S microcontrollers. It is most popular on STM32 microcontrollers.

By default, it supports communication interfaces such as: RS232, CAN, USB, TCP/IP and it ships with the easy-to-use [MicroBoot](https://www.feaser.com/openblt/doku.php?id=manual:microboot) PC tool for initiating and monitoring the firmware update. Performing firmware updates directly from an SD-card is also supported.

For those that prefer a command line program for performing firmware updates, there is [BootCommander](https://www.feaser.com/openblt/doku.php?id=manual:bootcommander). If you would rather build your own firmware update tool for seamless integration into your existing toolset, then have a look at the OpenBLT host library ([LibOpenBLT](https://www.feaser.com/openblt/doku.php?id=manual:libopenblt)). This is an easy-to-use shared library, enabling you to develop your own firmware update tool quickly, in the programming language of your liking.

Note that all host tools (MicroBoot/BootCommander/LibOpenBLT) are cross-platform supporting both MS Windows and GNU/Linux.

The OpenBLT [download package](https://www.feaser.com/openblt/doku.php?id=download) contains numerous preconfigured demo programs for popular and low-cost development boards, making it possible for you to get started with the bootloader quickly.

Additional information, the lastest news, tips and tricks, and tutorials are available via the following channels:

* The [FAQ](https://www.feaser.com/openblt/doku.php?id=faq) for frequently asked questions
* The [Wiki](https://www.feaser.com/openblt/doku.php) for in-depth information
* OpenBLT's [Twitter](https://twitter.com/openblt) account and developer [blog](https://www.feaser.com/en/blog/) for the latest news
* OpenBLT's [YouTube](https://www.youtube.com/channel/UC09dHkd5kULtXxcn0x2sYxw) channel for video presentations and tutorials

The OpenBLT source code is hosted on SourceForge and available in its subversion SVN repository:

* [https://sourceforge.net/projects/openblt/](https://sourceforge.net/projects/openblt/)

For those that prefer GIT for their version control, there is a read-only mirror of the SVN repository at GitHub:

* [https://github.com/feaser/openblt/](https://github.com/feaser/openblt/)

OpenBLT is offered under a dual licensing model. The default license is the GNU GPL. If you plan on integrating OpenBLT into your closed source project, a commercial license can be obtained:

- [https://www.feaser.com/en/openblt.php#licensing](https://www.feaser.com/en/openblt.php#licensing)

Development and maintenance of OpenBLT is sponsered by Feaser. Feaser also offers integration/customization services, support and maintenance contracts, and several add-on modules:

- [https://www.feaser.com](https://www.feaser.com)


