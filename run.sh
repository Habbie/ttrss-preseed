sudo virsh destroy ttrss
sudo virsh undefine ttrss
sudo virt-install \
	--connect qemu:///system \
	--name ttrss \
	--ram 512 \
	--disk path=/dev/vg1/vm-ttrss \
	--virt-type kvm \
	--os-variant=ubuntuprecise  \
	--location /mnt/ubuntu-iso \
	--graphics vnc \
	--serial=pty \
	--initrd-inject ~peter/ttrss-preseed/preseed.cfg \
	--extra-args="auto DEBCONF_DEBUG=5"

#	--extra-args="text console=ttyS0 auto dbg/flags=all-x" \
