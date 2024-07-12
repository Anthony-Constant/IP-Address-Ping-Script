#---------------------------------------------------------------------------------------#
# Title:          IP Address Ping Script                                                #
# Description: Easily ping a list of IP addresses                                       #
# Author:         Anthony Constant                                                      #
#---------------------------------------------------------------------------------------#

# List of IP addresses to ping
$ipAddresses = @(
    "10.10.10.10",
    "10.10.20.10",
    "10.10.30.10",
    "10.10.20.100"       
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
