CC = i686-echidnaos-gcc
CFLAGS = -O3 -Wall -Wextra
PREFIX = 
C_FILES = hello.c
OBJ = $(C_FILES:.c=.o)

hello: $(OBJ)
	$(CC) -o hello $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) hello

install:
	mkdir -p $(PREFIX)/bin
	cp hello $(PREFIX)/bin/