# Netplan WOL Enabler Script

This script generates a YAML configuration file within the Netplan abstraction layer to enable **Wake-on-LAN (WOL)** functionality on **Linux-based systems**.

## Features

The script performs the following tasks:

- Detects and selects the active **wired** network interface.
- Assigns a **custom interface name** (can be modified within the script or left as the default).
- Enables **Wake-on-LAN (WOL)** on the selected network adapter.
- Configures the interface to use **DHCP** for IP assignment.

## Usage

1. Copy the script to the `/etc/netplan/` directory:

   sudo cp enable-wol.sh /etc/netplan/

2. Make the script executable:

   sudo chmod +x /etc/netplan/enable-wol.sh

3. Run the script with root privileges:

   sudo /etc/netplan/enable-wol.sh

4. Reboot the system
