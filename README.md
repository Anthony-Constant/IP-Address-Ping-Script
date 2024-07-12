# IP Address Ping Script

This PowerShell script automates the process of pinging multiple IP addresses, each in a new command prompt window.

## Introduction

This script is designed to help network administrators and IT professionals easily ping a list of IP addresses. Each IP address is pinged in a separate command prompt window, allowing for continuous monitoring of multiple hosts simultaneously.

## How It Works

The script defines a list of IP addresses to ping. It then uses a function to open a new command prompt window for each IP address and execute a continuous ping (`ping -t`). This allows for real-time monitoring of the connectivity to each IP address.

## Features

- Pings multiple IP addresses concurrently.
- Opens a new command prompt window for each IP address.
- Continuous pinging for real-time monitoring.

## Dependencies

- PowerShell

## Getting Started

1. **Edit the Script:**
   - Open the script file (`ping_script.ps1`) in a text editor.
   - Modify the list of IP addresses to your desired IP addresses.
   - Save the script file.

2. **Run the Script:**
   - Open PowerShell.
   - Navigate to the directory where the script file is located using the `cd` command:
     ```powershell
     cd path\to\your\script\directory
     ```
   - Execute the script using the following command:
     ```powershell
     .\ping_script.ps1
     ```

3. **Monitor the Pings:**
   - Each IP address in the list will be pinged in a new command prompt window.
   - You can monitor the connectivity to each IP address in real-time.

## Script

```powershell
# List of IP addresses to ping
$ipAddresses = @(
    "10.224.242.7",
    "10.244.242.241",
    "10.246.243.9",
    "10.246.243.243",
    "10.243.242.1",
    "10.243.242.235"		
)

# Function to open a new command prompt window and ping an IP address
function Ping-IP {
    param (
        [string]$ip
    )
    Start-Process "cmd.exe" -ArgumentList "/c start cmd.exe /k ping $ip -t"
}

# Loop through the list of IP addresses and ping each one in a new command prompt window
foreach ($ip in $ipAddresses) {
    Ping-IP -ip $ip
}

Write-Host "Ping commands executed in new command prompt windows."
