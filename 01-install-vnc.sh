#!/bin/bash
sudo yum groupinstall -y "GNOME Desktop"
echo "Reboot is required at this point"
#sudo reboot
sudo yum install -y tigervnc-server
sudo ls -l /lib/systemd/system/vnc*
sudo cp /lib/systemd/system/vncserver@.service /etc/systemd/system/vncserver@:4.service
echo "Edit /etc/systemd/system/vncserver@:4.service and replace <USER> by your username ($USER), you can also add a -geometry AxB"
#sudo vi /etc/systemd/system/vncserver@:4.service
sudo systemctl daemon-reload
sudo systemctl enable vncserver@:4.service
echo "Password will be required"
vncserver
sudo systemctl daemon-reload
sudo systemctl restart vncserver@:4.service
echo "You can now connect to the server by installing vncviewer on the client and running: vncviewer <server>:5904" 
