# MSS access of Polarfire SoC


### How to build Yocto image for the board:

```jsx
#Handles multiple github repository
sudo apt-get install repo

mkdir yocto-dev && cd yocto-dev
repo init -u https://github.com/polarfire-soc/polarfire-soc-yocto-manifests.git -b main -m default.xml

repo sync  #Downloads the latest repo which contains recepies for the building the image
repo rebase

#Install Yocto Dependencies first before starting up:
sudo apt install gawk wget git diffstat unzip texinfo gcc build-essential chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev pylint xterm python3-subunit mesa-common-dev zstd liblz4-tool libyaml-dev libelf-dev

#Setup bitbake env:
. ./meta-polarfire-soc-yocto-bsp/polarfire-soc_yocto_setup.sh

#Add following line in the file conf/local.conf:
CORE_IMAGE_EXTRA_INSTALL = "tcpdump"

#To see the menuconfig of the image that we will build:
MACHINE=mpfs-disco-kit bitbake -c menuconfig virtual/kernel
--> Incase anyone wants to edit the drivers and all come with basic package.

#Building actual image:
MACHINE=mpfs-disco-kit bitbake mpfs-dev-cli
```

---

- For loading the image onto eMMC first we need to flash a bios type layer onto the board which is called as HSS.
- HSS is a basic software which runs on the control core and loads the image store in the eMMC.
- HSS is also used for loading the image into eMMC for the first time.
- Question is How to flash this HSS on the board.

### Flashing HSS on the board:

```jsx

# Get the latest HSS project
git clone https://github.com/polarfire-soc/hart-software-services
cd hart-software-services

# Ensure you have following three env variable set in your .bashrc 
# SC --> SoftConsole which is used to load the HSS application on the control core.
# FPGENPROG --> It is a third party tool from Libero which is used to flash the FPGA gateware.
# PATH --> It should be appended with python3 and riscv toolchain bins which are installed with SoftConsole

export SC_INSTALL_DIR=/usr/local/SoftConsole-v2022.2-RISC-V-747
export FPGENPROG=/usr/local/microchip/Libero_SoC_v2024.1/Libero/bin64/fpgenprog
export PATH=$PATH:/usr/local/microchip/Libero_SoC_v2024.1/Libero/bin64:$SC_INSTALL_DIR/riscv-unknown-elf-gcc/bin:$SC_INSTALL_DIR/python3/bin

#After ensuring env contains above paths then open up a fresh terminal

#This is to configure the HSS firmware
#Following command will open up a config window
# (TOP) -> (Services) -> (MMC) -> (MMC Mode) -> Select only Use eMMc
make BOARD=mpfs-icicle-kit-es config

#After executing above command you can see .config has been generated in the directory

#After config generation, we need to compile this HSS firmware
make BOARD=mpfs-disco-kit

#Once the build is successful then we can program the board directly
make program BOARD=mpfs-disco-kit
```
