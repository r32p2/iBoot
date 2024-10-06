CC = clang
LD = llvm-ld

SUBMODULES = boot/ kernel/

.PHONY: obj $(SUBMODULES)

obj: $(SUBMODULES)

$(SUBMODULES):
	$(MAKE) -C $@

all: obj

clean: $(SUBMODULES)

$(SUBMODULES):
	$(MAKE) -C $@ clean