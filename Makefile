TARGETS=hello_world

all: $(TARGETS)

%: %.o
	ld -o $@ $<

%.o: %.asm
	nasm -o $@ -f elf64 $<

.PHONY: all
