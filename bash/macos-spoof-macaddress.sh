Spoofing a MAC address
To spoof your MAC address, you simply set that value returned from ifconfig to another hex value in the format of aa:bb:cc:dd:ee:ff. You can generate a random one if need be.
For this example, we will set our wireless MAC address to 00:e2:e3:e4:e5:e6 by issuing the following command:
sudo ifconfig en1 ether 00:e2:e3:e4:e5:e6
The sudo command will require that you enter your root password to make the change.
Again, some Macs use en0, so if you run into any issues you can try that.
Verifying the Spoofed MAC address worked
If you want to check that the spoof worked, type the same command as earlier:
ifconfig en1 | grep ether
Now you will see:
ether 00:e2:e3:e4:e5:e6