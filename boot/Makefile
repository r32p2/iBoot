AS = as
FILES = $(wildcard *.s)
SOURCES = $(FILES:.s=)

boot.o: $(SOURCES)

$(SOURCES):
	$(AS) $@.s -o $@.o --32

all: boot.o

clean:
	rm -rf *.o

.PHONY: clean