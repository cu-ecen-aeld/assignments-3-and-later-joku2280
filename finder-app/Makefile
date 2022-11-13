ifdef CROSS_COMPILE
CC = $(CROSS_COMPILE)gcc -g -Wall -Werror
else
CC = gcc -g -Wall -Werror
endif

all: writer.c
	$(CC) writer.c -o writer

.PHONY: clean
clean:
	rm -f writer