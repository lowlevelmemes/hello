CC = cc
CFLAGS = -O3 -Wall -Wextra
PREFIX = /usr/local
DESTDIR =
C_FILES = hello.c
OBJ = $(C_FILES:.c=.o)

hello: $(OBJ)
	$(CC) -o hello $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) hello

install:
	install -d $(DESTDIR)$(PREFIX)/bin
	install -s hello $(DESTDIR)$(PREFIX)/bin/
