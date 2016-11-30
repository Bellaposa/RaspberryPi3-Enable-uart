
sudo echo 'enable_uart=1'  | sudo tee --append /boot/config.txt > /dev/null
sudo systemctl stop serial-getty@ttyS0.service
sudo systemctl disable serial-getty@ttyS0.service
sudo sh -c "echo 'dwc_otg.lpm_enable=0 console=tty1 root=/dev/mmcblk0p2 rootfstype=ext4 elevator=deadline fsck.repair=yes rootwait' > /boot/cmdline.txt"
 
