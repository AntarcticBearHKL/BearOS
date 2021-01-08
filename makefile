BearOS: Clear Boot.img Loader.bin
	mount Boot.img /media -t vfat -o loop
	cp Loader.bin /media
	sync
	umount /media

Boot.img:
	nasm Boot.asm -o Boot.img

Loader.bin:
	nasm Loader.asm -o Loader.bin

Clear:
	rm Boot.img 
	rm Loader.bin