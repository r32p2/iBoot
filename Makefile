CC = clang
LD = ld
AS = as
OBJCOPY = objcopy

SUBMODULES = boot/ kernel/

all: obj img flp

obj: $(SUBMODULES)

$(SUBMODULES):
	$(MAKE) -C $@

img:
	$(LD) -T link.ld -o img.elf boot/entry.o
	objcopy -O binary img.elf img.bin

flp:
	dd if=/dev/zero of=disk.img bs=1024 count=1440
	dd if=img.bin of=disk.img conv=notrunc 

.PHONY: obj $(SUBMODULES) clean

clean:
	rm img.bin
	rm img.elf
	rm -rf boot/*.o