# To Configure Networking Services to Start or Stop Automatically using command line

## Procedure for macOS

1. Open the Terminal application.

2. To list all the network services, type the following command:

``` bash
networksetup -listallnetworkservices
```

3. To turn off a network service, type the following command:

``` bash
networksetup -setnetworkserviceenabled Wi-Fi off
```

4. To turn on a network service, type the following command:

``` bash
networksetup -setnetworkserviceenabled Wi-Fi on
```

5. To automatically turn on a network service when the computer starts up, type the following command:

``` bash
sudo networksetup -setairportpower en0 on
```

6. To automatically turn off a network service when the computer starts up, type the following command:

``` bash
sudo networksetup -setairportpower en0 off
```

## Procedure for Linux

1. Open a terminal or command prompt on the Linux/Unix system.
2. Identify the networking service to be configured, such as the NetworkManager or systemd- networkd service.
3. Check the current status of the networking service using the command 
    
``` bash
systemctl status <service-name>
```

4. If the service is not enabled to start at boot, enable it using the command 

``` bash
systemctl enable <service-name>
```

5. If the service is currently running and should be stopped at boot, disable it using the command 

``` bash
systemctl disable <service-name>
```

6. Restart the system to confirm that the service starts or stops automatically during boot.
7. Verify that the service is running or stopped using the command 

``` bash
systemctl status <service-name>
```


