FILES = $(wildcard *.s)
SOURCES = $(FILES:.s=)
OUTPUT = $(FILES:.s=.o)

all: boot.o

boot.o: $(SOURCES)

$(SOURCES):
	$(AS) $@.s -o $@.o --32