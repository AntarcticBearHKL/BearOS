bearOS: clear diskImage.img loader.bin
	mount diskImage.img /media -t vfat -o loop
	cp loader.bin /media
	sync
	umount /media

diskImage.img:
	nasm diskImage.asm -o diskImage.img

loader.bin:
	nasm loader.asm -o loader.bin

clear:
	if [ -e diskImage.img ]; then rm diskImage.img; fi
	if [ -e loader.bin ]; then rm loader.bin; fi
