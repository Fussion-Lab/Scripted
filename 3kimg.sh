$1 = system.img
dd if=/dev/zero of=system.img bs=3k count=1048576
mkfs.ext4 system.img
tune2fs -c0 -i0 system.img
