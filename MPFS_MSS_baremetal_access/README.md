## How to use bare-metal application with PolarFire-SoC board:

- **Requirements**:
    - SoftConsole IDE running as root
    
- **STEP 1:** Get bare-metal examples developed by microchip for this specific board from here:
    - `git clone [https://github.com/polarfire-soc/polarfire-soc-bare-metal-examples.git](https://github.com/polarfire-soc/polarfire-soc-bare-metal-examples.git)`
    - In this repo, Microchip currently supports following examples for Discovery kit board:
        
        ![Untitled](Milestone%200%20c1ae8514d23f4de4b5cd8ef3bf000094/Untitled%202.png)
        
- **STEP 2:** Open SoftConsole IDE and load the application into it.
    - Files → Load projects from file explorer
    - Select the application folder from the repo:
        
        ![Untitled](Milestone%200%20c1ae8514d23f4de4b5cd8ef3bf000094/Untitled%203.png)
        
- **STEP 3:** Build the application for Polarfire SoC board.
    - For simple debug `LIM-Debug` mode can be used.
        - There are four boot modes available in each application.
            - `LIM-Debug`: This build configuration can be used to step-debug bare metal software typically in the initial development phase. The device should be configured to boot mode 0 and the embedded software loaded using the debugger.
            - `LIM-Release`: This build configuration is similar to LIM-Debug build configuration but uses higher optimization level (-Os). It initially runs from LIM, configures scratchpad, copies itself to it and executes from there. This build configuration is closer to a typical release code and still allows step-debugging.
            - `eNVM-Scratchpad-Release`: This build configuration is used when the embedded software is programmed to the eNVM and executes straight after the reset. It is assumed that this embedded software has already been tested using the LIM-Debug or LIM-Release configuration.
    
    ![Untitled](Milestone%200%20c1ae8514d23f4de4b5cd8ef3bf000094/Untitled%204.png)
    
    - Build should be successful as follows:
        
        ![Untitled](Milestone%200%20c1ae8514d23f4de4b5cd8ef3bf000094/Untitled%205.png)
        
- **STEP 4:** Run the application as follows
    - First ensure that board is connected to the host PC.
        - If the host is linux then add following rules in this file `/etc/udev/rules.d/70-microchip.rules`:
            
            ```jsx
            # Bind ftdi_sio driver to all input 
            ACTION=="add", ATTRS{idVendor}=="1514", ATTRS{idProduct}=="2008", \
            ATTRS{product}=="Embedded FlashPro5", ATTR{bInterfaceNumber}!="00", \
            RUN+="/sbin/modprobe ftdi_sio", RUN+="/bin/sh -c 'echo 1514 2008 > /sys/bus/usb-serial/drivers/ftdi_sio/new_id'"
             
            # Unbind ftdi_sio driver for channel A which should be the JTAG
            SUBSYSTEM=="usb", DRIVER=="ftdi_sio", ATTR{bInterfaceNumber}=="00", ATTR{interface}=="Embedded FlashPro5",\
            RUN+="/bin/sh -c 'echo $kernel > /sys/bus/usb/drivers/ftdi_sio/unbind'"
             
            # Helper (optional)
            KERNEL=="ttyUSB[0-9]*", SUBSYSTEM=="tty", SUBSYSTEMS=="usb", \
            ATTRS{interface}=="Embedded FlashPro5", ATTRS{bInterfaceNumber}=="01", \
            SYMLINK+="ttyUSB-FlashPro5B" GROUP="dialout" MODE="0666"
             
            KERNEL=="ttyUSB[0-9]*", SUBSYSTEM=="tty", SUBSYSTEMS=="usb", \
            ATTRS{interface}=="Embedded FlashPro5", ATTRS{bInterfaceNumber}=="02", \
            SYMLINK+="ttyUSB-FlashPro5C" GROUP="dialout" MODE="0666"
             
            KERNEL=="ttyUSB[0-9]*", SUBSYSTEM=="tty", SUBSYSTEMS=="usb", \
            ATTRS{interface}=="Embedded FlashPro5", ATTRS{bInterfaceNumber}=="03", \
            SYMLINK+="ttyUSB-FlashPro5D" GROUP="dialout" MODE="0666"
            ```
            
            - Afterwards the device should be visible when `lsusb` is done & also the `Flashpro`COM ports can be seen using `cat /dev/ttyUSB` :
                
                ![Untitled](Milestone%200%20c1ae8514d23f4de4b5cd8ef3bf000094/Untitled%206.png)
                
            
            ![Untitled](Milestone%200%20c1ae8514d23f4de4b5cd8ef3bf000094/Untitled%207.png)
            
            - If above ports and device is present then that means the device is successfully connected to your HOST PC.
    - Run → Debug Configuration
        
        ![Untitled](Milestone%200%20c1ae8514d23f4de4b5cd8ef3bf000094/Untitled%208.png)
        
    - Select <application-name> hw all harts debug
    
    ![Untitled](Milestone%200%20c1ae8514d23f4de4b5cd8ef3bf000094/Untitled%209.png)
    
    - After clicking on `Debug`, the board will be programmed.
- **STEP 5:** Testing the baremetal application
    - I use the following alias for quick testing of serial terminals:
        - Enter this in .bashrc and open a fresh terminal afterwards.
        
        ```jsx
        putty_connect() {                                                                                                                       │
                    local device=${1:-/dev/ttyUSB1}                                                                                             │
                        putty -serial "$device" -sercfg 115200,8,n,1,N                                                                          │
        }  
        ```
        
    - You can see which UART ports are available from five RV cores:
        
        ![Untitled](Milestone%200%20c1ae8514d23f4de4b5cd8ef3bf000094/Untitled%2010.png)
        
    - In my case I have `ttyUSB1, ttyUSB2, and ttyUSB3` ports available.
        - usually this will be the pattern:
            - ttyUSB1 → e51 core (Monitor/Control core)
            - ttyUSB2 → e52_1 core (first high-performance core)
            - and so on
    - For this example we just need to open control and first high performance core.
        - Open two putty interfaces using following two commands.
        
        ![Untitled](Milestone%200%20c1ae8514d23f4de4b5cd8ef3bf000094/Untitled%2011.png)
        
        - Since it is `LIM-Debug` mode, after flashing the board will be halted. We will need to resume the code as follows: `selecting the application and then clicking on resume button`
        
        ![Untitled](Milestone%200%20c1ae8514d23f4de4b5cd8ef3bf000094/Untitled%2012.png)
        
    - Once you click on `RESUME` button the messages on UART terminal should be visible:
    
    ![Untitled](Milestone%200%20c1ae8514d23f4de4b5cd8ef3bf000094/Untitled%2013.png)
    
    ---