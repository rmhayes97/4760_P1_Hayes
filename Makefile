FINAL = simplechain
CC = gcc
CFLAGS = -Wall
DEPS = simplechain.c
OBJ = simplechain.o

%.o: %.c $(DEPS)
	$(CC) $(CFLAGS) -c -o $@ $<

simplechain: $(OBJ)
	gcc $(CLAGS) -o $@ $^

.PHONY: clean
clean:
	/bin/rm -f $(FINAL) *.o

