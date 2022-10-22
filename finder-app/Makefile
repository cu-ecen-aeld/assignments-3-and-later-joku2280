ifdef CROSS_COMPILER
CC = $(CROSS_COMPILER)gcc
else
CC = gcc
endif

default: writer.c
	$(CC) writer.c -o writer

.PHONY: clean
clean:
	rm -f writer